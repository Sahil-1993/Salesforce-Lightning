public with sharing class AccountService {
    public static List<Account> fetchAccount(Integer limitSize) {
    
        return AccountSelector.getAccountList(limitSize);

    }
}