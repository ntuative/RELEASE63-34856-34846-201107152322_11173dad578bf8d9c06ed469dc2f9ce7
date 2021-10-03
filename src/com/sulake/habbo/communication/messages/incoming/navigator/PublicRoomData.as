package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2697:String;
      
      private var var_2420:int;
      
      private var var_2414:int;
      
      private var var_2695:String;
      
      private var var_2696:int;
      
      private var var_1910:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2697 = param1.readString();
         this.var_2420 = param1.readInteger();
         this.var_2414 = param1.readInteger();
         this.var_2695 = param1.readString();
         this.var_2696 = param1.readInteger();
         this.var_1910 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2697;
      }
      
      public function get unitPort() : int
      {
         return this.var_2420;
      }
      
      public function get worldId() : int
      {
         return this.var_2414;
      }
      
      public function get castLibs() : String
      {
         return this.var_2695;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2696;
      }
      
      public function get nodeId() : int
      {
         return this.var_1910;
      }
   }
}
