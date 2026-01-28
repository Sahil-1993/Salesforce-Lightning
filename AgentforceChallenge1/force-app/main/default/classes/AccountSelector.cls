public with sharing class AccountSelector {
    public static List<Account> getAccountList(Integer limitSize) {
        return [SELECT Id, Name, Industry From Account LIMIT :limitSize];
    }
}