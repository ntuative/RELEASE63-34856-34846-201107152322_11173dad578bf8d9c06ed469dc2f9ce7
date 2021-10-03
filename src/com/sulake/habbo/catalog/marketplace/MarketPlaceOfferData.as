package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_111:int = 1;
      
      public static const const_72:int = 2;
       
      
      private var var_1263:int;
      
      private var _furniId:int;
      
      private var var_2929:int;
      
      private var var_2250:String;
      
      private var var_1835:int;
      
      private var var_2586:int;
      
      private var var_2927:int;
      
      private var var_433:int;
      
      private var var_2928:int = -1;
      
      private var var_2124:int;
      
      private var var_48:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1263 = param1;
         this._furniId = param2;
         this.var_2929 = param3;
         this.var_2250 = param4;
         this.var_1835 = param5;
         this.var_433 = param6;
         this.var_2586 = param7;
         this.var_2124 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_48)
         {
            this.var_48.dispose();
            this.var_48 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this.var_1263;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2929;
      }
      
      public function get stuffData() : String
      {
         return this.var_2250;
      }
      
      public function get price() : int
      {
         return this.var_1835;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2586;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_48 != null)
         {
            this.var_48.dispose();
         }
         this.var_48 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2927 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2927;
      }
      
      public function get status() : int
      {
         return this.var_433;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2928;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2928 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1835 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1263 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_2124;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2124 = param1;
      }
   }
}
