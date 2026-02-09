import { LightningElement, api } from 'lwc';

export default class MenuItemList extends LightningElement {
    @api value; 
    // value = MenuItemWrapperOutput from Lightning Type

    get hasMenuItems() {
        return this.value?.menuItems?.length > 0;
    }

    get formattedMenuItems() {
        return this.value?.menuItems || [];
    }
}