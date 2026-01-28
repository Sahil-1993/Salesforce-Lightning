public with sharing class AccountController {
    @AuraEnabled(cacheable = true)
     public static List<Account> getAccounts() {
        try {
           return AccountService.fetchAccount(5);
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}