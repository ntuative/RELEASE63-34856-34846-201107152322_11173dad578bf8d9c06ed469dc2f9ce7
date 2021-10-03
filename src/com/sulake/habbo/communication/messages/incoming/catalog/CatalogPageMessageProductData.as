package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_64:String = "i";
      
      public static const const_69:String = "s";
      
      public static const const_193:String = "e";
       
      
      private var var_1484:String;
      
      private var var_2475:int;
      
      private var var_977:String;
      
      private var var_1485:int;
      
      private var var_1794:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1484 = param1.readString();
         this.var_2475 = param1.readInteger();
         this.var_977 = param1.readString();
         this.var_1485 = param1.readInteger();
         this.var_1794 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1484;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2475;
      }
      
      public function get extraParam() : String
      {
         return this.var_977;
      }
      
      public function get productCount() : int
      {
         return this.var_1485;
      }
      
      public function get expiration() : int
      {
         return this.var_1794;
      }
   }
}
