package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1767:String = "";
      
      private var var_2051:String = "";
      
      private var var_2975:String = "";
      
      private var var_2976:Number = 0;
      
      private var var_2977:Number = 0;
      
      private var var_2958:Number = 0;
      
      private var var_2956:Number = 0;
      
      private var var_2338:Boolean = false;
      
      private var var_2341:Boolean = false;
      
      private var var_2340:Boolean = false;
      
      private var var_2339:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1767 = param2;
         this.var_2051 = param3;
         this.var_2975 = param4;
         this.var_2976 = param5;
         this.var_2977 = param6;
         this.var_2958 = param7;
         this.var_2956 = param8;
         this.var_2338 = param9;
         this.var_2341 = param10;
         this.var_2340 = param11;
         this.var_2339 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1767;
      }
      
      public function get canvasId() : String
      {
         return this.var_2051;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2975;
      }
      
      public function get screenX() : Number
      {
         return this.var_2976;
      }
      
      public function get screenY() : Number
      {
         return this.var_2977;
      }
      
      public function get localX() : Number
      {
         return this.var_2958;
      }
      
      public function get localY() : Number
      {
         return this.var_2956;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2338;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2341;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2340;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2339;
      }
   }
}
