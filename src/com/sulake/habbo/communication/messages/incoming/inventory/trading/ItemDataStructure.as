package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2896:int;
      
      private var var_1701:String;
      
      private var var_2911:int;
      
      private var var_2914:int;
      
      private var _category:int;
      
      private var var_2250:String;
      
      private var var_1648:int;
      
      private var var_2909:int;
      
      private var var_2915:int;
      
      private var var_2910:int;
      
      private var var_2913:int;
      
      private var var_2912:Boolean;
      
      private var var_3123:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2896 = param1;
         this.var_1701 = param2;
         this.var_2911 = param3;
         this.var_2914 = param4;
         this._category = param5;
         this.var_2250 = param6;
         this.var_1648 = param7;
         this.var_2909 = param8;
         this.var_2915 = param9;
         this.var_2910 = param10;
         this.var_2913 = param11;
         this.var_2912 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2896;
      }
      
      public function get itemType() : String
      {
         return this.var_1701;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2911;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2914;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2250;
      }
      
      public function get extra() : int
      {
         return this.var_1648;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2909;
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
      
      public function get groupable() : Boolean
      {
         return this.var_2912;
      }
      
      public function get songID() : int
      {
         return this.var_1648;
      }
   }
}
