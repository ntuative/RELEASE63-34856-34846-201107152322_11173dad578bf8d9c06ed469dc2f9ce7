package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1263:int;
      
      private var var_2389:Boolean;
      
      private var var_2289:Boolean;
      
      private var var_2390:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1263 = param1.readInteger();
         this.var_2389 = param1.readBoolean();
         this.var_2390 = param1.readInteger();
         this.var_2289 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1263;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2389;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2289;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2390;
      }
   }
}
