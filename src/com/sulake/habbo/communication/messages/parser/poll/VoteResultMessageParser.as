package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1399:String;
      
      private var var_1645:Array;
      
      private var var_1400:Array;
      
      private var var_2091:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1399;
      }
      
      public function get choices() : Array
      {
         return this.var_1645.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1400.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2091;
      }
      
      public function flush() : Boolean
      {
         this.var_1399 = "";
         this.var_1645 = [];
         this.var_1400 = [];
         this.var_2091 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1399 = param1.readString();
         this.var_1645 = [];
         this.var_1400 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1645.push(param1.readString());
            this.var_1400.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2091 = param1.readInteger();
         return true;
      }
   }
}
