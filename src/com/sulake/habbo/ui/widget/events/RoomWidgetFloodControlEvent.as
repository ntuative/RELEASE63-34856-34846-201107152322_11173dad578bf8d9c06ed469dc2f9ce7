package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_778:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_2041:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_778,false,false);
         this.var_2041 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_2041;
      }
   }
}
