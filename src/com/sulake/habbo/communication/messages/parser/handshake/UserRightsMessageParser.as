package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserRightsMessageParser implements IMessageParser
   {
       
      
      private var var_1946:int;
      
      private var var_1948:int;
      
      public function UserRightsMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1946 = param1.readInteger();
         this.var_1948 = param1.readInteger();
         return true;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1946;
      }
      
      public function get securityLevel() : int
      {
         return this.var_1948;
      }
   }
}
