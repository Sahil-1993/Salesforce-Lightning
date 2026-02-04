public with sharing class MenuItemSelector {
      public static List<Menu_Item__c> getMenuItems(Integer limitSize) {
        return [SELECT Name, Price__c From Menu_Item__c LIMIT :limitSize];
    }
}