package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2006:int;
      
      private var var_2654:String;
      
      private var var_1067:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2006 = param1.readInteger();
         this.var_2654 = param1.readString();
         this.var_1067 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_2006;
      }
      
      public function get figureString() : String
      {
         return this.var_2654;
      }
      
      public function get gender() : String
      {
         return this.var_1067;
      }
   }
}
