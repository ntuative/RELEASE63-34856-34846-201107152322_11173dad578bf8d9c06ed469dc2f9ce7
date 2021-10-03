package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CallForHelpResultMessageParser implements IMessageParser
   {
       
      
      private var var_1935:int;
      
      public function CallForHelpResultMessageParser()
      {
         super();
      }
      
      public function get resultType() : int
      {
         return this.var_1935;
      }
      
      public function flush() : Boolean
      {
         this.var_1935 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1935 = param1.readInteger();
         return true;
      }
   }
}
