package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1780:int;
      
      private var var_1805:int;
      
      private var var_1804:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1805 = param1.readInteger();
         this.var_1780 = param1.readInteger();
         this.var_1804 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1780 = 0;
         this.var_1805 = 0;
         this.var_1804 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1780;
      }
      
      public function get messageId() : int
      {
         return this.var_1805;
      }
      
      public function get timestamp() : String
      {
         return this.var_1804;
      }
   }
}
