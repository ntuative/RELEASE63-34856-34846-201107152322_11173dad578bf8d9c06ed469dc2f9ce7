package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2484:int;
      
      private var var_2486:int;
      
      private var var_2908:String;
      
      private var var_2906:int;
      
      private var var_2907:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2484 = param1;
         this.var_2486 = param2;
         this.var_2908 = param3;
         this.var_2906 = param4;
         this.var_2907 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2484,this.var_2486,this.var_2908,this.var_2906,int(this.var_2907)];
      }
      
      public function dispose() : void
      {
      }
   }
}
