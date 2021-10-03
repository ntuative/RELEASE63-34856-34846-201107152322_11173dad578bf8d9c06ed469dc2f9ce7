package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2633:int;
      
      private var var_2632:int;
      
      private var var_2630:int;
      
      private var var_2631:String;
      
      private var var_2084:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2633 = param1.readInteger();
         this.var_2632 = param1.readInteger();
         this.var_2630 = param1.readInteger();
         this.var_2631 = param1.readString();
         this.var_2084 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2633;
      }
      
      public function get minute() : int
      {
         return this.var_2632;
      }
      
      public function get chatterId() : int
      {
         return this.var_2630;
      }
      
      public function get chatterName() : String
      {
         return this.var_2631;
      }
      
      public function get msg() : String
      {
         return this.var_2084;
      }
   }
}
