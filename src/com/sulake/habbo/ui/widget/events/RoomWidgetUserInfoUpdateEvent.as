package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_112:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_157:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_766:int = 2;
      
      public static const const_836:int = 3;
      
      public static const const_1776:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1832:String = "";
      
      private var var_2353:int;
      
      private var var_2344:int = 0;
      
      private var var_2357:int = 0;
      
      private var _figure:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_263:Array;
      
      private var var_1491:int = 0;
      
      private var var_2356:String = "";
      
      private var var_2350:int = 0;
      
      private var var_2345:int = 0;
      
      private var var_1751:Boolean = false;
      
      private var var_1833:String = "";
      
      private var var_2258:Boolean = false;
      
      private var var_2354:Boolean = false;
      
      private var var_2355:Boolean = true;
      
      private var var_1267:int = 0;
      
      private var var_2352:Boolean = false;
      
      private var var_2348:Boolean = false;
      
      private var var_2347:Boolean = false;
      
      private var var_2343:Boolean = false;
      
      private var var_2346:Boolean = false;
      
      private var var_2349:Boolean = false;
      
      private var var_2351:int = 0;
      
      private var var_1752:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_263 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1832 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1832;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2353 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2353;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2344 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2344;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2357 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2357;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_263 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_263;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1491 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1491;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2356 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2356;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2354 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2354;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1267 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1267;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2352 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2352;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2348 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2348;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2347 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2347;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2343 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2343;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2346 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2346;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2349 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2349;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2351 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2351;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2355 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2355;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1752 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1752;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2350 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2350;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2345 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2345;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1751 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1751;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1833 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1833;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2258 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2258;
      }
   }
}
