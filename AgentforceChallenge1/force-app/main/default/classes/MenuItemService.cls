public with sharing class MenuItemService {
    public static List<Menu_Item__c> fetchMenuItem(Integer limitSize) {
    
        return MenuItemSelector.getMenuItems(limitSize);

    }
}