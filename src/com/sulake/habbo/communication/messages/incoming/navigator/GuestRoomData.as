package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_370:int;
      
      private var var_818:Boolean;
      
      private var var_1083:String;
      
      private var _ownerName:String;
      
      private var var_2500:int;
      
      private var var_2495:int;
      
      private var var_2498:int;
      
      private var var_1784:String;
      
      private var var_2502:int;
      
      private var var_2501:Boolean;
      
      private var var_841:int;
      
      private var var_1569:int;
      
      private var var_2496:String;
      
      private var var_933:Array;
      
      private var var_2497:RoomThumbnailData;
      
      private var var_2499:Boolean;
      
      private var var_2494:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_933 = new Array();
         super();
         this.var_370 = param1.readInteger();
         this.var_818 = param1.readBoolean();
         this.var_1083 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2500 = param1.readInteger();
         this.var_2495 = param1.readInteger();
         this.var_2498 = param1.readInteger();
         this.var_1784 = param1.readString();
         this.var_2502 = param1.readInteger();
         this.var_2501 = param1.readBoolean();
         this.var_841 = param1.readInteger();
         this.var_1569 = param1.readInteger();
         this.var_2496 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_933.push(_loc4_);
            _loc3_++;
         }
         this.var_2497 = new RoomThumbnailData(param1);
         this.var_2499 = param1.readBoolean();
         this.var_2494 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_370;
      }
      
      public function get event() : Boolean
      {
         return this.var_818;
      }
      
      public function get roomName() : String
      {
         return this.var_1083;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2500;
      }
      
      public function get userCount() : int
      {
         return this.var_2495;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2498;
      }
      
      public function get description() : String
      {
         return this.var_1784;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2502;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2501;
      }
      
      public function get score() : int
      {
         return this.var_841;
      }
      
      public function get categoryId() : int
      {
         return this.var_1569;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2496;
      }
      
      public function get tags() : Array
      {
         return this.var_933;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2497;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2499;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2494;
      }
   }
}
