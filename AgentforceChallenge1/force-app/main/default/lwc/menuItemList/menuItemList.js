import { LightningElement,api } from 'lwc';

export default class MenuItemList extends LightningElement {
    @api items; // receives List<MenuItemOutput> from Apex

    // True if there are menu items to display
    get hasMenuItems() {
        return this.items && this.items.length > 0;
    }

    // No mapping needed, wrapper already matches template
    get formattedMenuItems() {
        return this.items;
    }
}
