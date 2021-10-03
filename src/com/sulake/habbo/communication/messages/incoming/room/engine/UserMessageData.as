package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1190:String = "M";
      
      public static const const_1874:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_187:Number = 0;
      
      private var var_186:Number = 0;
      
      private var var_490:int = 0;
      
      private var _name:String = "";
      
      private var var_1708:int = 0;
      
      private var var_1093:String = "";
      
      private var _figure:String = "";
      
      private var var_2506:String = "";
      
      private var var_2353:int;
      
      private var var_2344:int = 0;
      
      private var var_2505:String = "";
      
      private var var_2504:int = 0;
      
      private var var_2357:int = 0;
      
      private var var_2503:String = "";
      
      private var var_201:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_201 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_201)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_187;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_201)
         {
            this.var_187 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_186;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_201)
         {
            this.var_186 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_490;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_490 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_201)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1708;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_1708 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1093;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_1093 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_201)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2506;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_2506 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2353;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2353 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2344;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2344 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2505;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_2505 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2504;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2504 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2357;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2357 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2503;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_2503 = param1;
         }
      }
   }
}
