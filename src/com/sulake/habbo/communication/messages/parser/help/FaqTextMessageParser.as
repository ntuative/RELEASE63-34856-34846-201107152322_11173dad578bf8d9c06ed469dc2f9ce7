package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_1969:int;
      
      private var var_1968:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return this.var_1969;
      }
      
      public function get answerText() : String
      {
         return this.var_1968;
      }
      
      public function flush() : Boolean
      {
         this.var_1969 = -1;
         this.var_1968 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1969 = param1.readInteger();
         this.var_1968 = param1.readString();
         return true;
      }
   }
}
