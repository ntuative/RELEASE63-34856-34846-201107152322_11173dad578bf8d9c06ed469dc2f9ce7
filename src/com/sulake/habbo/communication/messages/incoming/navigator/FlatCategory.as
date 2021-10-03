package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1910:int;
      
      private var var_2297:String;
      
      private var var_339:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1910 = param1.readInteger();
         this.var_2297 = param1.readString();
         this.var_339 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1910;
      }
      
      public function get nodeName() : String
      {
         return this.var_2297;
      }
      
      public function get visible() : Boolean
      {
         return this.var_339;
      }
   }
}
