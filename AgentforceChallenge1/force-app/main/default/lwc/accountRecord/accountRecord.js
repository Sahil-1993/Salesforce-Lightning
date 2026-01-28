import { LightningElement, api } from 'lwc';

export default class AccountListDisplay extends LightningElement {
    @api accounts; // receives List<AccountOutputWrapper> from Apex

    // True if there are accounts to display
    get hasAccounts() {
        return this.accounts && this.accounts.length > 0;
    }

    // No mapping needed, wrapper already matches template
    get formattedAccounts() {
        return this.accounts;
    }
}
