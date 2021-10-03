package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_488:RoomObjectLocationCacheItem = null;
      
      private var var_218:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_488 = new RoomObjectLocationCacheItem(param1);
         this.var_218 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_488;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_218;
      }
      
      public function dispose() : void
      {
         if(this.var_488 != null)
         {
            this.var_488.dispose();
            this.var_488 = null;
         }
         if(this.var_218 != null)
         {
            this.var_218.dispose();
            this.var_218 = null;
         }
      }
   }
}
