package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.ActivityPointTypeEnum;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1263:int;
      
      private var var_1834:String;
      
      private var var_1835:int;
      
      private var _upgrade:Boolean;
      
      private var var_2435:Boolean;
      
      private var var_2436:int;
      
      private var var_2437:int;
      
      private var var_250:ICatalogPage;
      
      private var var_2433:int;
      
      private var var_2434:int;
      
      private var var_2439:int;
      
      private var var_1567:String;
      
      private var var_2438:Boolean = false;
      
      private var _disposed:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this.var_1263 = param1;
         this.var_1834 = param2;
         this.var_1835 = param3;
         this._upgrade = param4;
         this.var_2435 = param5;
         this.var_2436 = param6;
         this.var_2437 = param7;
         this.var_2433 = param8;
         this.var_2434 = param9;
         this.var_2439 = param10;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_250 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get extraParameter() : String
      {
         return this.var_1567;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1567 = param1;
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return ActivityPointTypeEnum.PIXEL;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1835;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_250;
      }
      
      public function get priceType() : String
      {
         return Offer.const_820;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1834;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_250 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2438;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2438 = param1;
      }
   }
}
