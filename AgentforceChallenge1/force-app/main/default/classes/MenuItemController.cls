public with sharing class MenuItemController {

    @AuraEnabled(cacheable=true)
    public static MenuItemWrapperOutput getMenuItems(Integer limitSize) {

        if (limitSize == null) limitSize = 10;

        List<Menu_Item__c> itemsList = MenuItemService.fetchMenuItem(limitSize);

        List<MenuItemOutput> dtoList = new List<MenuItemOutput>();
        for (Menu_Item__c item : itemsList) {
            MenuItemOutput dto = new MenuItemOutput();
            dto.name = item.Name;
            dto.price = item.Price__c;
            dtoList.add(dto);
        }

        MenuItemWrapperOutput wrapper = new MenuItemWrapperOutput();
        wrapper.menuItems = dtoList;

        return wrapper;
    }
}
