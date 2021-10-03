package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_579:WallRasterizer;
      
      private var var_577:FloorRasterizer;
      
      private var var_881:WallAdRasterizer;
      
      private var var_578:LandscapeRasterizer;
      
      private var var_880:PlaneMaskManager;
      
      private var var_800:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_579 = new WallRasterizer();
         this.var_577 = new FloorRasterizer();
         this.var_881 = new WallAdRasterizer();
         this.var_578 = new LandscapeRasterizer();
         this.var_880 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_800;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_577;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_579;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_881;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_578;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_880;
      }
      
      public function dispose() : void
      {
         if(this.var_579 != null)
         {
            this.var_579.dispose();
            this.var_579 = null;
         }
         if(this.var_577 != null)
         {
            this.var_577.dispose();
            this.var_577 = null;
         }
         if(this.var_881 != null)
         {
            this.var_881.dispose();
            this.var_881 = null;
         }
         if(this.var_578 != null)
         {
            this.var_578.dispose();
            this.var_578 = null;
         }
         if(this.var_880 != null)
         {
            this.var_880.dispose();
            this.var_880 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_579 != null)
         {
            this.var_579.clearCache();
         }
         if(this.var_577 != null)
         {
            this.var_577.clearCache();
         }
         if(this.var_578 != null)
         {
            this.var_578.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_579.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_577.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_881.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_578.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_880.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_800)
         {
            return;
         }
         this.var_579.initializeAssetCollection(param1);
         this.var_577.initializeAssetCollection(param1);
         this.var_881.initializeAssetCollection(param1);
         this.var_578.initializeAssetCollection(param1);
         this.var_880.initializeAssetCollection(param1);
         this.var_800 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
