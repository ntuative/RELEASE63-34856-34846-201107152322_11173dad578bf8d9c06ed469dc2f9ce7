package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1735:int = 0;
      
      private var var_1736:int = 0;
      
      private var var_2109:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1735;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1736;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2109;
      }
      
      public function flush() : Boolean
      {
         this.var_1735 = 0;
         this.var_1736 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1735 = param1.readInteger();
         this.var_1736 = param1.readInteger();
         this.var_2109 = param1.readInteger();
         return true;
      }
   }
}
