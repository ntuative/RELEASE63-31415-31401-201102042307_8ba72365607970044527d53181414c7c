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
         param1["null"] = const_190;
         param1["bound_to_parent_rect"] = const_96;
         param1["child_window"] = const_1045;
         param1["embedded_controller"] = const_1112;
         param1["resize_to_accommodate_children"] = const_69;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_810;
         param1["mouse_dragging_target"] = const_225;
         param1["mouse_dragging_trigger"] = const_347;
         param1["mouse_scaling_target"] = const_291;
         param1["mouse_scaling_trigger"] = const_539;
         param1["horizontal_mouse_scaling_trigger"] = const_217;
         param1["vertical_mouse_scaling_trigger"] = const_209;
         param1["observe_parent_input_events"] = const_1035;
         param1["optimize_region_to_layout_size"] = const_520;
         param1["parent_window"] = const_976;
         param1["relative_horizontal_scale_center"] = const_176;
         param1["relative_horizontal_scale_fixed"] = const_144;
         param1["relative_horizontal_scale_move"] = const_387;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_988;
         param1["relative_scale_fixed"] = const_654;
         param1["relative_scale_move"] = const_1001;
         param1["relative_scale_strech"] = const_1054;
         param1["relative_vertical_scale_center"] = const_191;
         param1["relative_vertical_scale_fixed"] = const_138;
         param1["relative_vertical_scale_move"] = const_386;
         param1["relative_vertical_scale_strech"] = const_361;
         param1["on_resize_align_left"] = const_802;
         param1["on_resize_align_right"] = const_546;
         param1["on_resize_align_center"] = const_554;
         param1["on_resize_align_top"] = const_641;
         param1["on_resize_align_bottom"] = const_473;
         param1["on_resize_align_middle"] = const_490;
         param1["on_accommodate_align_left"] = const_1131;
         param1["on_accommodate_align_right"] = const_559;
         param1["on_accommodate_align_center"] = const_789;
         param1["on_accommodate_align_top"] = const_1167;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_734;
         param1["route_input_events_to_parent"] = const_449;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1008;
         param1["scalable_with_mouse"] = const_1137;
         param1["reflect_horizontal_resize_to_parent"] = const_572;
         param1["reflect_vertical_resize_to_parent"] = const_511;
         param1["reflect_resize_to_parent"] = const_294;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
