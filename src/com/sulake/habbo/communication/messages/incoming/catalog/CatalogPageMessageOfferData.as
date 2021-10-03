package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1263:int;
      
      private var var_2110:String;
      
      private var var_1347:int;
      
      private var var_1346:int;
      
      private var var_2109:int;
      
      private var var_1946:int;
      
      private var var_1353:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1263 = param1.readInteger();
         this.var_2110 = param1.readString();
         this.var_1347 = param1.readInteger();
         this.var_1346 = param1.readInteger();
         this.var_2109 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1353 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1353.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1946 = param1.readInteger();
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
      
      public function get products() : Array
      {
         return this.var_1353;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2109;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1946;
      }
   }
}
