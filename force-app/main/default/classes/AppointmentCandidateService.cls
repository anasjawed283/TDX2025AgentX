public class AppointmentCandidateService {
   //Instance members for parsing
   public String startTime;
   public String endTime;
   public List<String> resources; 
   public String territoryId;
   public static List<AppointmentCandidateService> getAppointmentCandidates(){
      //Build input for GetAppointmentCandidates API
      lxscheduler.GetAppointmentCandidatesInput input = new lxscheduler.GetAppointmentCandidatesInputBuilder()
         .setWorkTypeGroupId('0VSNS0000002ZUj4AM')
         .setTerritoryIds(new List<String>{'0HhNS0000006Mp30AE'})
         .setStartTime(System.now().format('yyyy-MM-dd\'T\'HH:mm:ssZ','America/Los_Angeles'))
         .setEndTime(System.now().addDays(2).format('yyyy-MM-dd\'T\'HH:mm:ssZ','America/Los_Angeles'))
         .setSchedulingPolicyId('0VrNS0000010jZF')
         .setApiVersion(Double.valueOf('50.0'))
         .build();
       List<AppointmentCandidateService> vList = parse(lxscheduler.SchedulerResources.getAppointmentCandidates(input));
       List<AppointmentCandidateService> tempList = new List<AppointmentCandidateService>();
       Integer i=0;
       for(AppointmentCandidateService acs:vList ){
           if(i<8){
               tempList.add(acs);
           }else{
               break;
           }
           i++;
       }
       system.debug(tempList);
      return tempList;
   }
   private static List<AppointmentCandidateService> parse(String json) {
      return (List<AppointmentCandidateService>) System.JSON.deserialize(json, List<AppointmentCandidateService>.class);
   }
}