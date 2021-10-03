package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_793:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1850:String = "inventory_effects";
      
      public static const const_1296:String = "inventory_badges";
      
      public static const const_1770:String = "inventory_clothes";
      
      public static const const_2021:String = "inventory_furniture";
       
      
      private var var_2290:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_793);
         this.var_2290 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2290;
      }
   }
}
