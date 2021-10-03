package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_187:Number = 0;
      
      private var var_186:Number = 0;
      
      private var var_2670:Number = 0;
      
      private var var_2672:Number = 0;
      
      private var var_2668:Number = 0;
      
      private var var_2669:Number = 0;
      
      private var var_490:int = 0;
      
      private var var_2441:int = 0;
      
      private var var_363:Array;
      
      private var var_2671:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_363 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_187 = param3;
         this.var_186 = param4;
         this.var_2670 = param5;
         this.var_490 = param6;
         this.var_2441 = param7;
         this.var_2672 = param8;
         this.var_2668 = param9;
         this.var_2669 = param10;
         this.var_2671 = param11;
         this.var_363 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_187;
      }
      
      public function get z() : Number
      {
         return this.var_186;
      }
      
      public function get localZ() : Number
      {
         return this.var_2670;
      }
      
      public function get targetX() : Number
      {
         return this.var_2672;
      }
      
      public function get targetY() : Number
      {
         return this.var_2668;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2669;
      }
      
      public function get dir() : int
      {
         return this.var_490;
      }
      
      public function get dirHead() : int
      {
         return this.var_2441;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2671;
      }
      
      public function get actions() : Array
      {
         return this.var_363.slice();
      }
   }
}
