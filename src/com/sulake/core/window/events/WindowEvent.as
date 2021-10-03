package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1947:String = "WE_DESTROY";
      
      public static const const_332:String = "WE_DESTROYED";
      
      public static const const_1729:String = "WE_OPEN";
      
      public static const const_2038:String = "WE_OPENED";
      
      public static const const_1970:String = "WE_CLOSE";
      
      public static const const_1920:String = "WE_CLOSED";
      
      public static const const_2033:String = "WE_FOCUS";
      
      public static const const_359:String = "WE_FOCUSED";
      
      public static const const_1959:String = "WE_UNFOCUS";
      
      public static const const_1764:String = "WE_UNFOCUSED";
      
      public static const const_1851:String = "WE_ACTIVATE";
      
      public static const const_548:String = "WE_ACTIVATED";
      
      public static const const_1869:String = "WE_DEACTIVATE";
      
      public static const const_500:String = "WE_DEACTIVATED";
      
      public static const const_369:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_660:String = "WE_UNSELECT";
      
      public static const const_619:String = "WE_UNSELECTED";
      
      public static const const_1844:String = "WE_LOCK";
      
      public static const const_1964:String = "WE_LOCKED";
      
      public static const const_1766:String = "WE_UNLOCK";
      
      public static const const_1842:String = "WE_UNLOCKED";
      
      public static const const_902:String = "WE_ENABLE";
      
      public static const const_289:String = "WE_ENABLED";
      
      public static const const_848:String = "WE_DISABLE";
      
      public static const const_262:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_431:String = "WE_RELOCATED";
      
      public static const const_1194:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1857:String = "WE_MINIMIZE";
      
      public static const const_1792:String = "WE_MINIMIZED";
      
      public static const const_1846:String = "WE_MAXIMIZE";
      
      public static const const_1812:String = "WE_MAXIMIZED";
      
      public static const const_2019:String = "WE_RESTORE";
      
      public static const const_1871:String = "WE_RESTORED";
      
      public static const const_603:String = "WE_CHILD_ADDED";
      
      public static const const_449:String = "WE_CHILD_REMOVED";
      
      public static const const_224:String = "WE_CHILD_RELOCATED";
      
      public static const const_159:String = "WE_CHILD_RESIZED";
      
      public static const const_370:String = "WE_CHILD_ACTIVATED";
      
      public static const const_571:String = "WE_PARENT_ADDED";
      
      public static const const_1948:String = "WE_PARENT_REMOVED";
      
      public static const const_1750:String = "WE_PARENT_RELOCATED";
      
      public static const const_586:String = "WE_PARENT_RESIZED";
      
      public static const const_1304:String = "WE_PARENT_ACTIVATED";
      
      public static const const_153:String = "WE_OK";
      
      public static const const_645:String = "WE_CANCEL";
      
      public static const const_110:String = "WE_CHANGE";
      
      public static const const_591:String = "WE_SCROLL";
      
      public static const UNKNOWN:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_749:IWindow;
      
      protected var var_1143:Boolean;
      
      protected var var_507:Boolean;
      
      protected var var_166:Boolean;
      
      protected var var_748:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_749 = param3;
         _loc5_.var_507 = param4;
         _loc5_.var_166 = false;
         _loc5_.var_748 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_749;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_507;
      }
      
      public function recycle() : void
      {
         if(this.var_166)
         {
            throw new Error("Event already recycled!");
         }
         this.var_749 = null;
         this._window = null;
         this.var_166 = true;
         this.var_1143 = false;
         this.var_748.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1143;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1143 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1143;
      }
      
      public function stopPropagation() : void
      {
         this.var_1143 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1143 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_507 + " window: " + this._window + " }";
      }
   }
}
