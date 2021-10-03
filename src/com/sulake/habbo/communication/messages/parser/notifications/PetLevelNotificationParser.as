package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1916:int;
      
      private var var_2391:String;
      
      private var var_1275:int;
      
      private var var_1282:int;
      
      private var var_1843:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1916 = param1.readInteger();
         this.var_2391 = param1.readString();
         this.var_1275 = param1.readInteger();
         this.var_1282 = param1.readInteger();
         this.var_1843 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1916;
      }
      
      public function get petName() : String
      {
         return this.var_2391;
      }
      
      public function get level() : int
      {
         return this.var_1275;
      }
      
      public function get petType() : int
      {
         return this.var_1282;
      }
      
      public function get breed() : int
      {
         return this.var_1843;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
