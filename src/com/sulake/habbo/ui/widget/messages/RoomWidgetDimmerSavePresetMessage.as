package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_967:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2484:int;
      
      private var var_2486:int;
      
      private var _color:uint;
      
      private var var_1208:int;
      
      private var var_2485:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_967);
         this.var_2484 = param1;
         this.var_2486 = param2;
         this._color = param3;
         this.var_1208 = param4;
         this.var_2485 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2484;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2486;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1208;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2485;
      }
   }
}
