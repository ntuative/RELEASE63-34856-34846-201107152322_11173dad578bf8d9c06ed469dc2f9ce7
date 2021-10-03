package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2136:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1183:int = 3;
       
      
      private var var_1103:String;
      
      private var var_2720:int;
      
      private var var_2721:int;
      
      private var var_2726:int;
      
      private var var_2728:int;
      
      private var var_2719:Boolean;
      
      private var var_2708:Boolean;
      
      private var var_2723:int;
      
      private var var_2725:int;
      
      private var var_2727:Boolean;
      
      private var var_2724:int;
      
      private var var_2722:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1103 = param1.readString();
         this.var_2720 = param1.readInteger();
         this.var_2721 = param1.readInteger();
         this.var_2726 = param1.readInteger();
         this.var_2728 = param1.readInteger();
         this.var_2719 = param1.readBoolean();
         this.var_2708 = param1.readBoolean();
         this.var_2723 = param1.readInteger();
         this.var_2725 = param1.readInteger();
         this.var_2727 = param1.readBoolean();
         this.var_2724 = param1.readInteger();
         this.var_2722 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1103;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2720;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2721;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2726;
      }
      
      public function get responseType() : int
      {
         return this.var_2728;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2719;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2708;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2723;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2725;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2727;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2724;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2722;
      }
   }
}
