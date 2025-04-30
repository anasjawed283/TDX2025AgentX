public class AccountFinancialsUpdater {

    public class AccountInput {
        @InvocableVariable(required=true)
        public Id accountId;

        @InvocableVariable public Integer customerMonthlyIncome;
        @InvocableVariable public Integer customerMonthlySavings;
        @InvocableVariable public Integer entertainment;
        @InvocableVariable public Integer food;
        @InvocableVariable public Integer health;
        @InvocableVariable public Integer otherExpenses;
        @InvocableVariable public String riskAppetite;
    }

    public class AccountOutput {
        @InvocableVariable
        public Id accountId;
    }

    @InvocableMethod(label='Update Account Financials' description='Updates financial fields on the Account object')
    public static List<AccountOutput> updateAccountFinancialDetails(List<AccountInput> inputList) {
        List<Account> accountsToUpdate = new List<Account>();
        List<AccountOutput> outputList = new List<AccountOutput>();

        for (AccountInput input : inputList) {
            if (input.accountId != null) {
                Account acc = new Account(
                    Id = input.accountId,
                    Monthly_Income__c = input.customerMonthlyIncome,
                    Monthly_Savings__c = input.customerMonthlySavings,
                    Entertainment__c = input.entertainment,
                    Food__c = input.food,
                    Health__c = input.health,
                    Other_Expenses__c = input.otherExpenses,
                    Risk_Appetite__c = input.riskAppetite
                );
                accountsToUpdate.add(acc);

                AccountOutput output = new AccountOutput();
                output.accountId = acc.Id;
                outputList.add(output);
            }
        }

        if (!accountsToUpdate.isEmpty()) {
            try {
                update accountsToUpdate;
            } catch (DmlException e) {
                throw new AuraHandledException('Failed to update Account records: ' + e.getMessage());
            }
        }

        return outputList; 
    }
}