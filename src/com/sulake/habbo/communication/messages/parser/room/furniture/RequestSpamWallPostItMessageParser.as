package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RequestSpamWallPostItMessageParser implements IMessageParser
   {
       
      
      private var var_1927:int;
      
      private var var_488:String;
      
      public function RequestSpamWallPostItMessageParser()
      {
         super();
      }
      
      public function get itemId() : int
      {
         return this.var_1927;
      }
      
      public function get location() : String
      {
         return this.var_488;
      }
      
      public function flush() : Boolean
      {
         this.var_1927 = -1;
         this.var_488 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1927 = param1.readInteger();
         this.var_488 = param1.readString();
         return true;
      }
   }
}
