package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1263:int;
      
      private var var_1834:String;
      
      private var var_1835:int;
      
      private var _upgrade:Boolean;
      
      private var var_2435:Boolean;
      
      private var var_2436:int;
      
      private var var_2437:int;
      
      private var var_2433:int;
      
      private var var_2434:int;
      
      private var var_2439:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1263 = param1.readInteger();
         this.var_1834 = param1.readString();
         this.var_1835 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2435 = param1.readBoolean();
         this.var_2436 = param1.readInteger();
         this.var_2437 = param1.readInteger();
         this.var_2433 = param1.readInteger();
         this.var_2434 = param1.readInteger();
         this.var_2439 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1263;
      }
      
      public function get productCode() : String
      {
         return this.var_1834;
      }
      
      public function get price() : int
      {
         return this.var_1835;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2435;
      }
      
      public function get periods() : int
      {
         return this.var_2436;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2437;
      }
      
      public function get year() : int
      {
         return this.var_2433;
      }
      
      public function get month() : int
      {
         return this.var_2434;
      }
      
      public function get day() : int
      {
         return this.var_2439;
      }
   }
}
