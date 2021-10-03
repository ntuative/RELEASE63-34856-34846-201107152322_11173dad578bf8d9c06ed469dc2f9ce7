package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2196:int;
      
      private var var_3025:int;
      
      private var var_1474:int;
      
      private var var_2416:int;
      
      private var var_135:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2196 = param1.readInteger();
         this.var_3025 = param1.readInteger();
         this.var_1474 = param1.readInteger();
         this.var_2416 = param1.readInteger();
         this.var_135 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2196);
      }
      
      public function get callId() : int
      {
         return this.var_2196;
      }
      
      public function get callerUserId() : int
      {
         return this.var_3025;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1474;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2416;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_135;
      }
   }
}
