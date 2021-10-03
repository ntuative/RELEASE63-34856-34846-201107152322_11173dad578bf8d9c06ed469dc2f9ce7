package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1865:int;
      
      private var _currentPosition:int;
      
      private var var_1867:int;
      
      private var var_1864:int;
      
      private var var_1866:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1865;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1867;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1864;
      }
      
      public function get syncCount() : int
      {
         return this.var_1866;
      }
      
      public function flush() : Boolean
      {
         this.var_1865 = -1;
         this._currentPosition = -1;
         this.var_1867 = -1;
         this.var_1864 = -1;
         this.var_1866 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1865 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1867 = param1.readInteger();
         this.var_1864 = param1.readInteger();
         this.var_1866 = param1.readInteger();
         return true;
      }
   }
}
