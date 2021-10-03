package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_935;
         param1["badge"] = const_936;
         param1["bitmap"] = const_453;
         param1["border"] = const_958;
         param1["border_notify"] = const_1979;
         param1["bubble"] = const_782;
         param1["bubble_pointer_up"] = const_1180;
         param1["bubble_pointer_right"] = const_1331;
         param1["bubble_pointer_down"] = const_1234;
         param1["bubble_pointer_left"] = const_1192;
         param1["button"] = const_575;
         param1["button_thick"] = const_1031;
         param1["button_icon"] = const_1853;
         param1["button_group_left"] = const_934;
         param1["button_group_center"] = const_812;
         param1["button_group_right"] = const_919;
         param1["canvas"] = const_927;
         param1["checkbox"] = const_922;
         param1["closebutton"] = const_1308;
         param1["container"] = const_434;
         param1["container_button"] = const_1026;
         param1["display_object_wrapper"] = const_868;
         param1["dropmenu"] = const_601;
         param1["dropmenu_item"] = const_668;
         param1["frame"] = const_437;
         param1["frame_notify"] = const_1741;
         param1["header"] = const_1011;
         param1["html"] = const_1254;
         param1["icon"] = const_1405;
         param1["itemgrid"] = const_1354;
         param1["itemgrid_horizontal"] = const_566;
         param1["itemgrid_vertical"] = const_932;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_442;
         param1["itemlist_vertical"] = const_398;
         param1["label"] = const_923;
         param1["maximizebox"] = const_1825;
         param1["menu"] = const_1795;
         param1["menu_item"] = const_1829;
         param1["submenu"] = const_1243;
         param1["minimizebox"] = const_1976;
         param1["notify"] = const_1927;
         param1["HabboRoomUICom_badge_details"] = const_735;
         param1["password"] = const_943;
         param1["radiobutton"] = const_908;
         param1["region"] = const_321;
         param1["restorebox"] = const_1821;
         param1["scaler"] = const_495;
         param1["scaler_horizontal"] = const_1802;
         param1["scaler_vertical"] = const_1803;
         param1["scrollbar_horizontal"] = const_631;
         param1["scrollbar_vertical"] = const_1017;
         param1["scrollbar_slider_button_up"] = const_1381;
         param1["scrollbar_slider_button_down"] = const_1228;
         param1["scrollbar_slider_button_left"] = const_1229;
         param1["scrollbar_slider_button_right"] = const_1302;
         param1["scrollbar_slider_bar_horizontal"] = const_1272;
         param1["scrollbar_slider_bar_vertical"] = const_1275;
         param1["scrollbar_slider_track_horizontal"] = const_1240;
         param1["scrollbar_slider_track_vertical"] = const_1278;
         param1["scrollable_itemlist"] = const_1937;
         param1["scrollable_itemlist_vertical"] = const_675;
         param1["scrollable_itemlist_horizontal"] = const_1178;
         param1["selector"] = const_891;
         param1["selector_list"] = const_1020;
         param1["submenu"] = const_1243;
         param1["tab_button"] = const_890;
         param1["tab_container_button"] = const_1222;
         param1["tab_context"] = const_460;
         param1["tab_content"] = const_1336;
         param1["tab_selector"] = const_1005;
         param1["text"] = const_1007;
         param1["input"] = const_875;
         param1["toolbar"] = const_2031;
         param1["tooltip"] = const_399;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
