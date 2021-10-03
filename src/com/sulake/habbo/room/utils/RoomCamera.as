package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1477:Number = 12;
       
      
      private var var_2423:int = -1;
      
      private var var_2424:int = -2;
      
      private var var_220:Vector3d = null;
      
      private var var_1211:Number = 0;
      
      private var var_1500:Number = 0;
      
      private var var_1823:Boolean = false;
      
      private var var_198:Vector3d = null;
      
      private var var_1824:Vector3d;
      
      private var var_2427:Boolean = false;
      
      private var var_2426:Boolean = false;
      
      private var var_2429:Boolean = false;
      
      private var var_2421:Boolean = false;
      
      private var var_2422:int = 0;
      
      private var var_2430:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2428:int = 0;
      
      private var var_2425:int = 0;
      
      private var var_1827:int = -1;
      
      private var var_1826:int = 0;
      
      private var var_1825:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1824 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_198;
      }
      
      public function get targetId() : int
      {
         return this.var_2423;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2424;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1824;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2427;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2426;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2429;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2421;
      }
      
      public function get screenWd() : int
      {
         return this.var_2422;
      }
      
      public function get screenHt() : int
      {
         return this.var_2430;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2428;
      }
      
      public function get roomHt() : int
      {
         return this.var_2425;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1827;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_220 != null && this.var_198 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2423 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1824.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2424 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2427 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2426 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2429 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2421 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2422 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2430 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1825 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2428 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2425 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1827 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_220 == null)
         {
            this.var_220 = new Vector3d();
         }
         if(this.var_220.x != param1.x || this.var_220.y != param1.y || this.var_220.z != param1.z)
         {
            this.var_220.assign(param1);
            this.var_1826 = 0;
            _loc2_ = Vector3d.dif(this.var_220,this.var_198);
            this.var_1211 = _loc2_.length;
            this.var_1823 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_220 = null;
         this.var_198 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_198 != null)
         {
            return;
         }
         this.var_198 = new Vector3d();
         this.var_198.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_198 == null)
         {
            this.var_198 = new Vector3d();
         }
         this.var_198.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_220 != null && this.var_198 != null)
         {
            ++this.var_1826;
            if(this.var_1825)
            {
               this.var_1825 = false;
               this.var_198 = this.var_220;
               this.var_220 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_220,this.var_198);
            if(_loc3_.length > this.var_1211)
            {
               this.var_1211 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_198 = this.var_220;
               this.var_220 = null;
               this.var_1500 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1211);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1211 / const_1477;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1823)
               {
                  if(_loc7_ < this.var_1500)
                  {
                     _loc7_ = this.var_1500;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1823 = false;
                  }
               }
               this.var_1500 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_198 = Vector3d.sum(this.var_198,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1827 = -1;
      }
   }
}
