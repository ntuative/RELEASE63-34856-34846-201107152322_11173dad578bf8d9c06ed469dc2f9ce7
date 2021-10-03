package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2511:int;
      
      private var var_1701:String;
      
      private var _objId:int;
      
      private var var_2186:int;
      
      private var _category:int;
      
      private var var_2250:String;
      
      private var var_2781:Boolean;
      
      private var var_2779:Boolean;
      
      private var var_2780:Boolean;
      
      private var var_2778:Boolean;
      
      private var var_2674:int;
      
      private var var_1648:int;
      
      private var var_2006:String = "";
      
      private var var_1608:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2511 = param1;
         this.var_1701 = param2;
         this._objId = param3;
         this.var_2186 = param4;
         this._category = param5;
         this.var_2250 = param6;
         this.var_2781 = param7;
         this.var_2779 = param8;
         this.var_2780 = param9;
         this.var_2778 = param10;
         this.var_2674 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_2006 = param1;
         this.var_1648 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2511;
      }
      
      public function get itemType() : String
      {
         return this.var_1701;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2186;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2250;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2781;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2779;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2780;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2778;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2674;
      }
      
      public function get slotId() : String
      {
         return this.var_2006;
      }
      
      public function get songId() : int
      {
         return this.var_1608;
      }
      
      public function get extra() : int
      {
         return this.var_1648;
      }
   }
}
