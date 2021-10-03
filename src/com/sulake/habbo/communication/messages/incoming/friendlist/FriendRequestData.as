package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1369:int;
      
      private var var_2653:String;
      
      private var var_2655:int;
      
      private var var_2654:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1369 = param1.readInteger();
         this.var_2653 = param1.readString();
         this.var_2654 = param1.readString();
         this.var_2655 = this.var_1369;
      }
      
      public function get requestId() : int
      {
         return this.var_1369;
      }
      
      public function get requesterName() : String
      {
         return this.var_2653;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2655;
      }
      
      public function get figureString() : String
      {
         return this.var_2654;
      }
   }
}
