package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1902:Boolean;
      
      private var var_2593:int;
      
      private var var_2594:String;
      
      private var var_370:int;
      
      private var var_2596:int;
      
      private var var_2200:String;
      
      private var var_2595:String;
      
      private var var_2592:String;
      
      private var var_933:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_933 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1902 = false;
            return;
         }
         this.var_1902 = true;
         this.var_2593 = int(_loc2_);
         this.var_2594 = param1.readString();
         this.var_370 = int(param1.readString());
         this.var_2596 = param1.readInteger();
         this.var_2200 = param1.readString();
         this.var_2595 = param1.readString();
         this.var_2592 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_933.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_933 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2593;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2594;
      }
      
      public function get flatId() : int
      {
         return this.var_370;
      }
      
      public function get eventType() : int
      {
         return this.var_2596;
      }
      
      public function get eventName() : String
      {
         return this.var_2200;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2595;
      }
      
      public function get creationTime() : String
      {
         return this.var_2592;
      }
      
      public function get tags() : Array
      {
         return this.var_933;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1902;
      }
   }
}
