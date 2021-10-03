package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_872:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1204:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2222:String = "RWOCM_PIXELS";
      
      public static const const_2295:String = "RWOCM_CREDITS";
      
      public static const const_2166:String = "RWOCM_SHELLS";
       
      
      private var var_2894:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_872);
         this.var_2894 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2894;
      }
   }
}
