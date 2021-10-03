package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1728:int = 0;
      
      private var var_1597:Dictionary;
      
      private var var_1995:int = 0;
      
      private var var_1996:int = 0;
      
      private var var_2708:Boolean = false;
      
      private var var_2723:int = 0;
      
      private var var_2725:int = 0;
      
      private var var_2709:Boolean = false;
      
      public function Purse()
      {
         this.var_1597 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1728;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1728 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1995;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1995 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1996;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1996 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1995 > 0 || this.var_1996 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2708;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2709;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2709 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2708 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2723;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2723 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2725;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2725 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1597;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1597 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1597[param1];
      }
   }
}
