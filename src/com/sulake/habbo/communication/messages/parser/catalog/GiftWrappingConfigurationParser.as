package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2992:Boolean;
      
      private var var_2991:int;
      
      private var var_1945:Array;
      
      private var var_830:Array;
      
      private var var_831:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2992;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2991;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1945 = [];
         this.var_830 = [];
         this.var_831 = [];
         this.var_2992 = param1.readBoolean();
         this.var_2991 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1945.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_830.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_831.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
