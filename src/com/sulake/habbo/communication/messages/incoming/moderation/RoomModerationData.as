package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_370:int;
      
      private var var_2495:int;
      
      private var var_2568:Boolean;
      
      private var var_2569:int;
      
      private var _ownerName:String;
      
      private var var_135:RoomData;
      
      private var var_818:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_370 = param1.readInteger();
         this.var_2495 = param1.readInteger();
         this.var_2568 = param1.readBoolean();
         this.var_2569 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_135 = new RoomData(param1);
         this.var_818 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_135 != null)
         {
            this.var_135.dispose();
            this.var_135 = null;
         }
         if(this.var_818 != null)
         {
            this.var_818.dispose();
            this.var_818 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_370;
      }
      
      public function get userCount() : int
      {
         return this.var_2495;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2568;
      }
      
      public function get ownerId() : int
      {
         return this.var_2569;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_135;
      }
      
      public function get event() : RoomData
      {
         return this.var_818;
      }
   }
}
