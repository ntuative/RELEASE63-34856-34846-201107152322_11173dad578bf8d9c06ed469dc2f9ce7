package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1389:int = 1;
      
      public static const const_737:int = 2;
      
      public static const const_905:int = 3;
      
      public static const const_1754:int = 4;
       
      
      private var _index:int;
      
      private var var_2775:String;
      
      private var var_2773:String;
      
      private var var_2777:Boolean;
      
      private var var_2774:String;
      
      private var var_1087:String;
      
      private var var_2776:int;
      
      private var var_2495:int;
      
      private var _type:int;
      
      private var var_2396:String;
      
      private var var_1062:GuestRoomData;
      
      private var var_1061:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2775 = param1.readString();
         this.var_2773 = param1.readString();
         this.var_2777 = param1.readInteger() == 1;
         this.var_2774 = param1.readString();
         this.var_1087 = param1.readString();
         this.var_2776 = param1.readInteger();
         this.var_2495 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1389)
         {
            this.var_2396 = param1.readString();
         }
         else if(this._type == const_905)
         {
            this.var_1061 = new PublicRoomData(param1);
         }
         else if(this._type == const_737)
         {
            this.var_1062 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1062 != null)
         {
            this.var_1062.dispose();
            this.var_1062 = null;
         }
         if(this.var_1061 != null)
         {
            this.var_1061.dispose();
            this.var_1061 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2775;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2773;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2777;
      }
      
      public function get picText() : String
      {
         return this.var_2774;
      }
      
      public function get picRef() : String
      {
         return this.var_1087;
      }
      
      public function get folderId() : int
      {
         return this.var_2776;
      }
      
      public function get tag() : String
      {
         return this.var_2396;
      }
      
      public function get userCount() : int
      {
         return this.var_2495;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1062;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1061;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1389)
         {
            return 0;
         }
         if(this.type == const_737)
         {
            return this.var_1062.maxUserCount;
         }
         if(this.type == const_905)
         {
            return this.var_1061.maxUsers;
         }
         return 0;
      }
   }
}
