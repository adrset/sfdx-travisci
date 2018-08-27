@RestResource(urlMapping='/SteamTest/*')
public with sharing class{
    @HttpGet
    public static List<ltut__Steam_Account__c> doGet(){
        RestRequest req = RestContext.request;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        try {
            return [SELECT Id, Name, ltut__Steam_Id__c FROM ltut__Steam_Account__c WHERE ltut__Steam_Id__c = :accountId LIMIT 1];  
        } catch (exception e) {
            return null;
        }

    }


}