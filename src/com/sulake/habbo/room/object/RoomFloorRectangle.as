package com.sulake.habbo.room.object
{
   public class RoomFloorRectangle
   {
       
      
      private var var_1043:int;
      
      private var _top:int;
      
      private var _right:int;
      
      private var var_1044:int;
      
      private var var_2901:Number;
      
      public function RoomFloorRectangle(param1:int, param2:int, param3:int, param4:int, param5:Number)
      {
         super();
         this.var_1043 = param1;
         this._top = param2;
         this._right = param3;
         this.var_1044 = param4;
         this.var_2901 = param5;
      }
      
      public function get left() : int
      {
         return this.var_1043;
      }
      
      public function get top() : int
      {
         return this._top;
      }
      
      public function get right() : int
      {
         return this._right;
      }
      
      public function get bottom() : int
      {
         return this.var_1044;
      }
      
      public function get altitude() : Number
      {
         return this.var_2901;
      }
   }
}
