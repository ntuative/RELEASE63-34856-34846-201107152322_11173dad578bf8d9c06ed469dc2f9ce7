package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_814:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2785:String;
      
      private var var_2995:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_814,param3,param4);
         this.var_2785 = param1;
         this.var_2995 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2785;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2995;
      }
   }
}
