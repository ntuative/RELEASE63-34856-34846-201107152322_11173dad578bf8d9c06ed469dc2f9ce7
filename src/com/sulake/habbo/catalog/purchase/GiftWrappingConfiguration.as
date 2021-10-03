package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1617:Boolean = false;
      
      private var var_1835:int;
      
      private var var_1945:Array;
      
      private var var_830:Array;
      
      private var var_831:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1617 = _loc2_.isWrappingEnabled;
         this.var_1835 = _loc2_.wrappingPrice;
         this.var_1945 = _loc2_.stuffTypes;
         this.var_830 = _loc2_.boxTypes;
         this.var_831 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1617;
      }
      
      public function get price() : int
      {
         return this.var_1835;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1945;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_830;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_831;
      }
   }
}
