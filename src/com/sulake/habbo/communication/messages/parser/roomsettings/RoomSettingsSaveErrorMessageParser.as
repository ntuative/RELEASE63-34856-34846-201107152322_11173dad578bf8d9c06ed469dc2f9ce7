package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2265:int = 1;
      
      public static const const_2232:int = 2;
      
      public static const const_2269:int = 3;
      
      public static const const_2251:int = 4;
      
      public static const const_1779:int = 5;
      
      public static const const_2334:int = 6;
      
      public static const const_1892:int = 7;
      
      public static const const_1831:int = 8;
      
      public static const const_2328:int = 9;
      
      public static const const_1746:int = 10;
      
      public static const const_1791:int = 11;
      
      public static const const_1971:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1780:int;
      
      private var var_677:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1780 = param1.readInteger();
         this.var_677 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1780;
      }
      
      public function get info() : String
      {
         return this.var_677;
      }
   }
}
