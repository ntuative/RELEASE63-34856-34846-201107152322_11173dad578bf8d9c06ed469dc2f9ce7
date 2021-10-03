package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_371:int = 1;
      
      public static const const_223:int = 2;
      
      public static const const_251:int = 3;
      
      public static const const_344:int = 4;
      
      public static const const_280:int = 5;
      
      public static const const_394:int = 1;
      
      public static const const_810:int = 2;
      
      public static const const_969:int = 3;
      
      public static const const_850:int = 4;
      
      public static const const_284:int = 5;
      
      public static const const_897:int = 6;
      
      public static const const_747:int = 7;
      
      public static const const_411:int = 8;
      
      public static const const_655:int = 9;
      
      public static const const_2162:int = 10;
      
      public static const const_990:int = 11;
      
      public static const const_543:int = 12;
       
      
      private var var_467:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_467 = new Array();
         this.var_467.push(new Tab(this._navigator,const_371,const_543,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_664));
         this.var_467.push(new Tab(this._navigator,const_223,const_394,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_664));
         this.var_467.push(new Tab(this._navigator,const_344,const_990,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1271));
         this.var_467.push(new Tab(this._navigator,const_251,const_284,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_664));
         this.var_467.push(new Tab(this._navigator,const_280,const_411,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1348));
         this.setSelectedTab(const_371);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_344;
      }
      
      public function get tabs() : Array
      {
         return this.var_467;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_467)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_467)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_467)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
