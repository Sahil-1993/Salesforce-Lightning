public with sharing class MenuItemController {
    @InvocableMethod(label='Get Menu Items')
    public static List<MenuItemOutput> getMenuItems(List<MenuItemInput> inputs) {

        Integer limitSize = 10;
        if (inputs != null && !inputs.isEmpty() && inputs[0].limitSize != null) {
            limitSize = inputs[0].limitSize;
        }

        List<Menu_Item__c> itemsList = MenuItemService.fetchMenuItem(limitSize);

        MenuItemOutput output = new MenuItemOutput();
        output.items = itemsList;

        // IMPORTANT: return List<AccountOutput> with ONE element
        return new List<MenuItemOutput>{ output };
    }

    public class MenuItemInput {
        @InvocableVariable(label='Number of Items')
        public Integer limitSize;
    }

    public class MenuItemOutput {
        @InvocableVariable(label='Items')
        public List<Menu_Item__c> items;
    }
}