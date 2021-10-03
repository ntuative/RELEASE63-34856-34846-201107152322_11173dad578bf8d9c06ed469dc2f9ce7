package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_2021:Boolean;
      
      private var _roomId:int;
      
      private var var_1083:String;
      
      private var var_2611:int;
      
      private var var_2610:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2021 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_1083 = param1.readString();
         this.var_2611 = param1.readInteger();
         this.var_2610 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_2021;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_1083;
      }
      
      public function get enterHour() : int
      {
         return this.var_2611;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2610;
      }
   }
}
