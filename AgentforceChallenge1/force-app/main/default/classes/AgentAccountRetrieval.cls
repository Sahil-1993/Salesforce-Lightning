public with sharing class AgentAccountRetrieval {

    // Invocable method for Agentforce
    @InvocableMethod(label='Get Recent Accounts')
    public static List<AccountOutputWrapper> getRecentAccounts(List<AccountInput> limitSizeList) {

        Integer count = (limitSizeList != null && !limitSizeList.isEmpty()) ? limitSizeList[0].limitSize : 10;

        // Fetch Accounts via service
        List<Account> accounts = AccountService.fetchAccount(count);

        // Map Accounts to wrapper for LWC
        List<AccountOutputWrapper> output = new List<AccountOutputWrapper>();
        for (Account acc : accounts) {
            AccountOutputWrapper wrapper = new AccountOutputWrapper();
            wrapper.accountId = acc.Id;
            wrapper.accountName = acc.Name;
            wrapper.industry = acc.Industry != null ? acc.Industry : 'N/A';
            output.add(wrapper);
        }

        return output;
    }

    // Input wrapper
    public class AccountInput {
        @InvocableVariable(label='Number of Accounts')
        public Integer limitSize;
    }

    // Output wrapper for LWC
    public class AccountOutputWrapper {
        @InvocableVariable(label='Account Id')
        public Id accountId;

        @InvocableVariable(label='Account Name')
        public String accountName;

        @InvocableVariable(label='Industry')
        public String industry;
    }
}
