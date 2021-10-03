package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_1093:String;
      
      private var var_3023:String;
      
      private var var_1833:String;
      
      private var var_3022:int;
      
      private var var_3021:String;
      
      private var var_3020:int;
      
      private var var_3024:int;
      
      private var var_2591:int;
      
      private var var_1267:int;
      
      private var var_833:int;
      
      private var var_2665:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_1093 = param1.readString();
         this.var_3023 = param1.readString();
         this.var_1833 = param1.readString();
         this.var_3022 = param1.readInteger();
         this.var_3021 = param1.readString();
         this.var_3020 = param1.readInteger();
         this.var_3024 = param1.readInteger();
         this.var_2591 = param1.readInteger();
         this.var_1267 = param1.readInteger();
         this.var_833 = param1.readInteger();
         this.var_2665 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_1093;
      }
      
      public function get customData() : String
      {
         return this.var_3023;
      }
      
      public function get realName() : String
      {
         return this.var_1833;
      }
      
      public function get tickets() : int
      {
         return this.var_3022;
      }
      
      public function get poolFigure() : String
      {
         return this.var_3021;
      }
      
      public function get photoFilm() : int
      {
         return this.var_3020;
      }
      
      public function get directMail() : int
      {
         return this.var_3024;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2591;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1267;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_833;
      }
      
      public function get identityId() : int
      {
         return this.var_2665;
      }
   }
}
