package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1916:int;
      
      private var _name:String;
      
      private var var_1275:int;
      
      private var var_3037:int;
      
      private var var_2370:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_3040:int;
      
      private var var_3038:int;
      
      private var var_3039:int;
      
      private var var_2937:int;
      
      private var var_2569:int;
      
      private var _ownerName:String;
      
      private var var_592:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1916;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1275;
      }
      
      public function get maxLevel() : int
      {
         return this.var_3037;
      }
      
      public function get experience() : int
      {
         return this.var_2370;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_3040;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_3038;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_3039;
      }
      
      public function get respect() : int
      {
         return this.var_2937;
      }
      
      public function get ownerId() : int
      {
         return this.var_2569;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_592;
      }
      
      public function flush() : Boolean
      {
         this.var_1916 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1916 = param1.readInteger();
         this._name = param1.readString();
         this.var_1275 = param1.readInteger();
         this.var_3037 = param1.readInteger();
         this.var_2370 = param1.readInteger();
         this.var_3040 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_3038 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_3039 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2937 = param1.readInteger();
         this.var_2569 = param1.readInteger();
         this.var_592 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
