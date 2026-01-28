public with sharing class AccountSelector {
    public static List<Account> getAccountList(Integer limitSize) {
        return [SELECT Id, Name From Account LIMIT :limitSize];
    }
}