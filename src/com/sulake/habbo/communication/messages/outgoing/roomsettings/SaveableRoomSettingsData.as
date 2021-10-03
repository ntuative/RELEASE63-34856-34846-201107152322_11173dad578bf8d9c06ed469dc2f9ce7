package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1784:String;
      
      private var var_2500:int;
      
      private var _password:String;
      
      private var var_1569:int;
      
      private var var_2921:int;
      
      private var var_933:Array;
      
      private var var_2919:Array;
      
      private var var_2499:Boolean;
      
      private var var_2922:Boolean;
      
      private var var_2923:Boolean;
      
      private var var_2918:Boolean;
      
      private var var_2920:int;
      
      private var var_2924:int;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2499;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2499 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2922;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2922 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2923;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2923 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2918;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2918 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2920;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2920 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2924;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2924 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1784;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1784 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2500;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2500 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1569;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1569 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2921;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2921 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_933;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_933 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2919;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2919 = param1;
      }
   }
}
