package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["HabboRoomUICom_badge_details"] = const_195;
         param1["bound_to_parent_rect"] = const_103;
         param1["child_window"] = const_1221;
         param1["embedded_controller"] = const_1376;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_992;
         param1["mouse_dragging_target"] = const_288;
         param1["mouse_dragging_trigger"] = const_455;
         param1["mouse_scaling_target"] = const_381;
         param1["mouse_scaling_trigger"] = const_516;
         param1["horizontal_mouse_scaling_trigger"] = const_269;
         param1["vertical_mouse_scaling_trigger"] = const_302;
         param1["observe_parent_input_events"] = const_1406;
         param1["optimize_region_to_layout_size"] = const_612;
         param1["parent_window"] = const_1274;
         param1["relative_horizontal_scale_center"] = const_212;
         param1["relative_horizontal_scale_fixed"] = const_168;
         param1["relative_horizontal_scale_move"] = const_413;
         param1["relative_horizontal_scale_strech"] = const_454;
         param1["relative_scale_center"] = const_1264;
         param1["relative_scale_fixed"] = const_799;
         param1["relative_scale_move"] = const_1289;
         param1["relative_scale_strech"] = const_1239;
         param1["relative_vertical_scale_center"] = const_204;
         param1["relative_vertical_scale_fixed"] = const_179;
         param1["relative_vertical_scale_move"] = const_294;
         param1["relative_vertical_scale_strech"] = const_375;
         param1["on_resize_align_left"] = const_1014;
         param1["on_resize_align_right"] = const_600;
         param1["on_resize_align_center"] = const_602;
         param1["on_resize_align_top"] = const_861;
         param1["on_resize_align_bottom"] = const_491;
         param1["on_resize_align_middle"] = const_582;
         param1["on_accommodate_align_left"] = const_1191;
         param1["on_accommodate_align_right"] = const_536;
         param1["on_accommodate_align_center"] = const_911;
         param1["on_accommodate_align_top"] = const_1167;
         param1["on_accommodate_align_bottom"] = const_537;
         param1["on_accommodate_align_middle"] = const_862;
         param1["route_input_events_to_parent"] = const_503;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1176;
         param1["scalable_with_mouse"] = const_1223;
         param1["reflect_horizontal_resize_to_parent"] = const_614;
         param1["reflect_vertical_resize_to_parent"] = const_541;
         param1["reflect_resize_to_parent"] = const_353;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1349;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
