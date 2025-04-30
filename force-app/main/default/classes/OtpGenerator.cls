public class OtpGenerator {
    public class OTPRequest{
        @InvocableVariable
        public Id accountId;
        
        @InvocableVariable
        public String emailAddress;
    }
    
    public class OTPResponse{
        @InvocableVariable
        public String otp;
    }
    
    @InvocableMethod
    public static List<OTPResponse> generateOTP(List<OTPRequest> requestList){
        List<OTPResponse> responses = new List<OTPResponse>();
        
        for(OTPRequest request: requestList){
            OTPResponse response = new OTPResponse();
            
            String otp = generateRandomOTP();
            
            response.otp = otp;
            responses.add(response);
        }
        
        return responses;
    }
    
    public static String generateRandomOTP(){
        Integer randomNumber = Math.mod(Crypto.getRandomInteger(), 1000000);
        randomNumber = Math.abs(randomNumber);
        String otpString = String.valueOf(randomNumber);
        
        while(otpString.length()<6){
            otpString = '0' + otpString;
        }
        
        return otpString;
    }

}