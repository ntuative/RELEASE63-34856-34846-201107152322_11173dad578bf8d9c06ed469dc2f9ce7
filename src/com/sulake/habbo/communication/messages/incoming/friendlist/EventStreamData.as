package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class EventStreamData
   {
      
      public static const const_1988:uint = 0;
      
      public static const const_1897:uint = 1;
      
      public static const const_1975:uint = 2;
      
      public static const const_2173:int = 0;
      
      public static const const_2221:int = 1;
      
      public static const LINK_TARGET_VISIT_ROOM:int = 2;
      
      public static const const_2312:int = 3;
       
      
      private var _id:int;
      
      private var var_2522:int;
      
      private var var_2520:String;
      
      private var var_2518:String;
      
      private var var_2516:String;
      
      private var var_2521:String;
      
      private var var_2515:int;
      
      private var var_2517:int;
      
      private var var_2519:Object;
      
      public function EventStreamData(param1:int, param2:int, param3:String, param4:String, param5:String, param6:String, param7:int, param8:int, param9:IMessageDataWrapper)
      {
         super();
         this._id = param1;
         this.var_2522 = param2;
         this.var_2520 = param3;
         this.var_2518 = param4;
         this.var_2516 = param5;
         this.var_2521 = param6;
         this.var_2515 = param7;
         this.var_2517 = param8;
         this.var_2519 = parse(param2,param9);
      }
      
      protected static function parse(param1:int, param2:IMessageDataWrapper) : Object
      {
         var _loc3_:Object = new Object();
         switch(param1)
         {
            case const_1988:
               _loc3_.friendId = param2.readString();
               _loc3_.friendName = param2.readString();
               break;
            case const_1897:
               _loc3_.roomId = param2.readString();
               _loc3_.roomName = param2.readString();
               break;
            case const_1975:
               _loc3_.achievementCode = param2.readString();
         }
         return _loc3_;
      }
      
      public function get actionId() : int
      {
         return this.var_2522;
      }
      
      public function get accountId() : String
      {
         return this.var_2520;
      }
      
      public function get accountName() : String
      {
         return this.var_2518;
      }
      
      public function get imageFilePath() : String
      {
         return this.var_2521;
      }
      
      public function get minutesSinceEvent() : int
      {
         return this.var_2515;
      }
      
      public function get linkTargetType() : int
      {
         return this.var_2517;
      }
      
      public function get extraDataStruct() : Object
      {
         return this.var_2519;
      }
      
      public function get accountGender() : String
      {
         return this.var_2516;
      }
   }
}

class Struct
{
    
   
   function Struct()
   {
      super();
   }
}

class FriendMadeStruct extends Struct
{
    
   
   public var friendId:String;
   
   public var friendName:String;
   
   function FriendMadeStruct(param1:String, param2:String)
   {
      super();
      this.friendId = param1;
      this.friendName = param2;
   }
}

class RoomLikedStruct extends Struct
{
    
   
   public var roomId:String;
   
   public var roomName:String;
   
   function RoomLikedStruct(param1:String, param2:String)
   {
      super();
      this.roomId = param1;
      this.roomName = param2;
   }
}

class AchievementEarnedStruct extends Struct
{
    
   
   public var achievementCode:String;
   
   function AchievementEarnedStruct(param1:String)
   {
      super();
      this.achievementCode = param1;
   }
}
