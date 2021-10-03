package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1617:Boolean;
      
      private var var_2481:int;
      
      private var var_1851:int;
      
      private var var_1852:int;
      
      private var var_2482:int;
      
      private var var_2480:int;
      
      private var var_2477:int;
      
      private var var_2478:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1617;
      }
      
      public function get commission() : int
      {
         return this.var_2481;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1851;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1852;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2480;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2482;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2477;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2478;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1617 = param1.readBoolean();
         this.var_2481 = param1.readInteger();
         this.var_1851 = param1.readInteger();
         this.var_1852 = param1.readInteger();
         this.var_2480 = param1.readInteger();
         this.var_2482 = param1.readInteger();
         this.var_2477 = param1.readInteger();
         this.var_2478 = param1.readInteger();
         return true;
      }
   }
}
