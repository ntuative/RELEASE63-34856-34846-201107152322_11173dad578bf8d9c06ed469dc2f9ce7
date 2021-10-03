package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1188:int = 0;
       
      
      private var var_446:BitmapData = null;
      
      private var var_2277:String = "";
      
      private var var_339:Boolean = true;
      
      private var var_2396:String = "";
      
      private var var_2443:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2524:String = "normal";
      
      private var var_1437:Boolean = false;
      
      private var var_1436:Boolean = false;
      
      private var _offset:Point;
      
      private var var_223:int = 0;
      
      private var _height:int = 0;
      
      private var var_1364:Number = 0;
      
      private var var_2523:Boolean = false;
      
      private var var_2525:Boolean = true;
      
      private var var_2491:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_2526:Array = null;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         super();
         this._instanceId = var_1188++;
      }
      
      public function dispose() : void
      {
         this.var_446 = null;
         this.var_223 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_446;
      }
      
      public function get assetName() : String
      {
         return this.var_2277;
      }
      
      public function get visible() : Boolean
      {
         return this.var_339;
      }
      
      public function get tag() : String
      {
         return this.var_2396;
      }
      
      public function get alpha() : int
      {
         return this.var_2443;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2524;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1436;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1437;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_223;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1364;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2523;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2525;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2491;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2526;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_223 = param1.width;
            this._height = param1.height;
         }
         this.var_446 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2277 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_339 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2396 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2443 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2524 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2526 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1437 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1436 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1364 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2523 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2525 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2491 = param1;
         ++this._updateID;
      }
   }
}
