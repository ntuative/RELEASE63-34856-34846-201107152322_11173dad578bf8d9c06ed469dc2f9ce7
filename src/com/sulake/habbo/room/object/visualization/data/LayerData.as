package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_960:String = "";
      
      public static const const_400:int = 0;
      
      public static const const_597:int = 255;
      
      public static const const_976:Boolean = false;
      
      public static const const_622:int = 0;
      
      public static const const_555:int = 0;
      
      public static const const_412:int = 0;
      
      public static const const_1256:int = 1;
      
      public static const const_1258:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2396:String = "";
      
      private var var_2027:int = 0;
      
      private var var_2443:int = 255;
      
      private var var_2445:Boolean = false;
      
      private var var_2446:int = 0;
      
      private var var_2447:int = 0;
      
      private var var_2444:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2396 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2396;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2027 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2027;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2443 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2443;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2445 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2445;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2446 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2446;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2447 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2447;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2444 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2444;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
