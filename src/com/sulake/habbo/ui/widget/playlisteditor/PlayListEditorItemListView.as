package com.sulake.habbo.ui.widget.playlisteditor
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.sound.ISongInfo;
   import flash.geom.ColorTransform;
   
   public class PlayListEditorItemListView
   {
       
      
      private var _itemListWindow:IItemListWindow;
      
      private var _items:Array;
      
      private var _widget:PlayListEditorWidget;
      
      private var var_114:PlayListEditorItem;
      
      private var var_1041:int = -1;
      
      private var var_1276:int = -1;
      
      public function PlayListEditorItemListView(param1:PlayListEditorWidget, param2:IItemListWindow)
      {
         super();
         this._itemListWindow = param2;
         this._widget = param1;
         this.var_114 = null;
      }
      
      public function get selectedItemIndex() : int
      {
         return this.var_1041;
      }
      
      public function destroy() : void
      {
         if(this._itemListWindow == null)
         {
            return;
         }
         this._itemListWindow.destroyListItems();
      }
      
      public function refresh(param1:Array, param2:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         if(this._itemListWindow == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         this.var_1276 = -1;
         this._items = new Array();
         this._itemListWindow.destroyListItems();
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.name;
            _loc5_ = _loc3_.creator;
            _loc6_ = this._widget.getDiskColorTransformFromSongData(_loc3_.songData);
            _loc7_ = new PlayListEditorItem(this._widget,_loc4_,_loc5_,_loc6_);
            _loc7_.window.procedure = this.itemEventProc;
            _loc7_.removeButton.procedure = this.itemEventProc;
            this._itemListWindow.addListItem(_loc7_.window);
            this._items.push(_loc7_);
         }
         this.setItemIndexPlaying(param2);
      }
      
      public function setItemIndexPlaying(param1:int) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this._items == null)
         {
            return;
         }
         if(param1 < 0)
         {
            for each(_loc3_ in this._items)
            {
               _loc3_.setIconState(PlayListEditorItem.const_661);
            }
            return;
         }
         if(param1 >= this._items.length)
         {
            return;
         }
         if(this.var_1276 >= 0 && this.var_1276 < this._items.length)
         {
            _loc2_ = this._items[this.var_1276] as PlayListEditorItem;
            _loc2_.setIconState(PlayListEditorItem.const_661);
         }
         _loc2_ = this._items[param1] as PlayListEditorItem;
         _loc2_.setIconState(PlayListEditorItem.const_1251);
         this.var_1276 = param1;
      }
      
      public function deselectAny() : void
      {
         if(this.var_114 != null)
         {
            this.var_114.deselect();
            this.var_114 = null;
            this.var_1041 = -1;
         }
      }
      
      private function itemEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = param1.type == WindowMouseEvent.const_167;
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK || _loc3_)
         {
            if(param2.name == "button_remove_from_playlist" || _loc3_)
            {
               if(this.var_114 != null)
               {
                  this.var_114.deselect();
               }
               if(this.var_1041 > -1)
               {
                  this._widget.sendRemoveFromPlayListMessage(this.var_1041);
               }
               this.var_114 = null;
               this.var_1041 = -1;
            }
            else
            {
               if(this.var_114 != null)
               {
                  this.var_114.deselect();
               }
               _loc4_ = this._itemListWindow.getListItemIndex(param1.window);
               if(_loc4_ != -1)
               {
                  this.var_1041 = _loc4_;
                  this.var_114 = this._items[_loc4_];
                  this.var_114.select();
                  if(param2.name == "button_remove_from_playlist")
                  {
                     this._widget.sendRemoveFromPlayListMessage(_loc4_);
                  }
                  if(this._widget.mainWindowHandler != null)
                  {
                     this._widget.mainWindowHandler.musicInventoryView.deselectAny();
                  }
               }
            }
         }
      }
   }
}
