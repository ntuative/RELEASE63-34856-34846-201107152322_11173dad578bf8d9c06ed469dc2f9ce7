package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_762:TileHeightMap = null;
      
      private var var_1163:LegacyWallGeometry = null;
      
      private var var_1164:RoomCamera = null;
      
      private var var_761:SelectedRoomObjectData = null;
      
      private var var_763:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_519:Map;
      
      private var var_518:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_519 = new Map();
         this.var_518 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1163 = new LegacyWallGeometry();
         this.var_1164 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_762;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_762 != null)
         {
            this.var_762.dispose();
         }
         this.var_762 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1163;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1164;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_761;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_761 != null)
         {
            this.var_761.dispose();
         }
         this.var_761 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_763;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_763 != null)
         {
            this.var_763.dispose();
         }
         this.var_763 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_762 != null)
         {
            this.var_762.dispose();
            this.var_762 = null;
         }
         if(this.var_1163 != null)
         {
            this.var_1163.dispose();
            this.var_1163 = null;
         }
         if(this.var_1164 != null)
         {
            this.var_1164.dispose();
            this.var_1164 = null;
         }
         if(this.var_761 != null)
         {
            this.var_761.dispose();
            this.var_761 = null;
         }
         if(this.var_763 != null)
         {
            this.var_763.dispose();
            this.var_763 = null;
         }
         if(this.var_519 != null)
         {
            this.var_519.dispose();
            this.var_519 = null;
         }
         if(this.var_518 != null)
         {
            this.var_518.dispose();
            this.var_518 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_519.remove(param1.id);
            this.var_519.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_519.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_519.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_519.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_518.remove(param1.id);
            this.var_518.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_518.length > 0)
         {
            return this.getWallItemDataWithId(this.var_518.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_518.remove(param1);
      }
   }
}
