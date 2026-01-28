public with sharing class AgentAccountRetrieval {

    @InvocableMethod(label='Get Recent Accounts')
    public static List<AccountOutput> getRecentAccounts(List<AccountInput> inputs) {

        Integer limitSize = 10;
        if (inputs != null && !inputs.isEmpty() && inputs[0].limitSize != null) {
            limitSize = inputs[0].limitSize;
        }

        List<Account> accounts = AccountService.fetchAccount(limitSize);

        AccountOutput output = new AccountOutput();
        output.accounts = accounts;

        // IMPORTANT: return List<AccountOutput> with ONE element
        return new List<AccountOutput>{ output };
    }

    public class AccountInput {
        @InvocableVariable(label='Number of Accounts')
        public Integer limitSize;
    }

    public class AccountOutput {
        @InvocableVariable(label='Accounts')
        public List<Account> accounts;
    }
}
