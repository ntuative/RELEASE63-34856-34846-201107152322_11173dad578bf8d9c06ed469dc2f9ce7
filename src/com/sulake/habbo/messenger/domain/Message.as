package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_800:int = 1;
      
      public static const const_837:int = 2;
      
      public static const const_815:int = 3;
      
      public static const const_1185:int = 4;
      
      public static const const_754:int = 5;
      
      public static const const_1268:int = 6;
       
      
      private var _type:int;
      
      private var var_1257:int;
      
      private var var_2328:String;
      
      private var var_2342:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1257 = param2;
         this.var_2328 = param3;
         this.var_2342 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2328;
      }
      
      public function get time() : String
      {
         return this.var_2342;
      }
      
      public function get senderId() : int
      {
         return this.var_1257;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
