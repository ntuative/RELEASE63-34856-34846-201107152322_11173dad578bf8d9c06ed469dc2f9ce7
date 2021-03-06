package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2250:String;
      
      protected var var_1648:Number;
      
      protected var var_3061:Boolean;
      
      protected var var_3062:Boolean;
      
      protected var var_2912:Boolean;
      
      protected var var_2885:Boolean;
      
      protected var var_3063:int;
      
      protected var var_2915:int;
      
      protected var var_2910:int;
      
      protected var var_2913:int;
      
      protected var var_2006:String;
      
      protected var var_1608:int;
      
      protected var var_1030:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2912 = param5;
         this.var_3062 = param6;
         this.var_3061 = param7;
         this.var_2885 = param8;
         this.var_2250 = param9;
         this.var_1648 = param10;
         this.var_3063 = param11;
         this.var_2915 = param12;
         this.var_2910 = param13;
         this.var_2913 = param14;
         this.var_2006 = param15;
         this.var_1608 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2250;
      }
      
      public function get extra() : Number
      {
         return this.var_1648;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_3061;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_3062;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2912;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2885;
      }
      
      public function get expires() : int
      {
         return this.var_3063;
      }
      
      public function get creationDay() : int
      {
         return this.var_2915;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2910;
      }
      
      public function get creationYear() : int
      {
         return this.var_2913;
      }
      
      public function get slotId() : String
      {
         return this.var_2006;
      }
      
      public function get songId() : int
      {
         return this.var_1608;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_1030 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_1030;
      }
   }
}
