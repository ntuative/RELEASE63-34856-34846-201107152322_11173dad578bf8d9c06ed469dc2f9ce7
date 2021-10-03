package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2828:String;
      
      private var var_2826:Class;
      
      private var var_2827:Class;
      
      private var var_2030:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2828 = param1;
         this.var_2826 = param2;
         this.var_2827 = param3;
         if(rest == null)
         {
            this.var_2030 = new Array();
         }
         else
         {
            this.var_2030 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2828;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2826;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2827;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_2030;
      }
   }
}
