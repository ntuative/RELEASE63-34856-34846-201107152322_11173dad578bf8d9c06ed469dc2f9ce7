package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1983:String = "pricing_model_unknown";
      
      public static const const_441:String = "pricing_model_single";
      
      public static const const_414:String = "pricing_model_multi";
      
      public static const const_528:String = "pricing_model_bundle";
      
      public static const const_1841:String = "price_type_none";
      
      public static const const_820:String = "price_type_credits";
      
      public static const const_1306:String = "price_type_activitypoints";
      
      public static const const_1225:String = "price_type_credits_and_activitypoints";
       
      
      private var var_879:String;
      
      private var var_1345:String;
      
      private var var_1263:int;
      
      private var var_2110:String;
      
      private var var_1347:int;
      
      private var var_1346:int;
      
      private var var_2109:int;
      
      private var var_250:ICatalogPage;
      
      private var var_717:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1946:int = 0;
      
      private var var_2898:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1263 = param1;
         this.var_2110 = param2;
         this.var_1347 = param3;
         this.var_1346 = param4;
         this.var_2109 = param5;
         this.var_250 = param8;
         this.var_1946 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1946;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_250;
      }
      
      public function get offerId() : int
      {
         return this.var_1263;
      }
      
      public function get localizationId() : String
      {
         return this.var_2110;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1347;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1346;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2109;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_717;
      }
      
      public function get pricingModel() : String
      {
         return this.var_879;
      }
      
      public function get priceType() : String
      {
         return this.var_1345;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2898;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2898 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1263 = 0;
         this.var_2110 = "";
         this.var_1347 = 0;
         this.var_1346 = 0;
         this.var_2109 = 0;
         this.var_250 = null;
         if(this.var_717 != null)
         {
            this.var_717.dispose();
            this.var_717 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_879)
         {
            case const_441:
               this.var_717 = new SingleProductContainer(this,param1);
               break;
            case const_414:
               this.var_717 = new MultiProductContainer(this,param1);
               break;
            case const_528:
               this.var_717 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_879);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_879 = const_441;
            }
            else
            {
               this.var_879 = const_414;
            }
         }
         else if(param1.length > 1)
         {
            this.var_879 = const_528;
         }
         else
         {
            this.var_879 = const_1983;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1347 > 0 && this.var_1346 > 0)
         {
            this.var_1345 = const_1225;
         }
         else if(this.var_1347 > 0)
         {
            this.var_1345 = const_820;
         }
         else if(this.var_1346 > 0)
         {
            this.var_1345 = const_1306;
         }
         else
         {
            this.var_1345 = const_1841;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_250.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_717.products)
         {
            _loc4_ = this.var_250.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
