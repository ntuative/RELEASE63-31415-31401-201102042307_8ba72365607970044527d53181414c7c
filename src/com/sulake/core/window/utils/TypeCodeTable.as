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
         param1["background"] = const_639;
         param1["bitmap"] = const_644;
         param1["border"] = const_850;
         param1["border_notify"] = const_1437;
         param1["button"] = const_543;
         param1["button_thick"] = const_786;
         param1["button_icon"] = const_1510;
         param1["button_group_left"] = const_617;
         param1["button_group_center"] = const_663;
         param1["button_group_right"] = const_643;
         param1["canvas"] = const_674;
         param1["checkbox"] = const_658;
         param1["closebutton"] = const_1197;
         param1["container"] = const_382;
         param1["container_button"] = const_827;
         param1["display_object_wrapper"] = const_725;
         param1["dropmenu"] = const_466;
         param1["dropmenu_item"] = const_455;
         param1["frame"] = const_352;
         param1["frame_notify"] = const_1573;
         param1["header"] = const_747;
         param1["html"] = const_1084;
         param1["icon"] = const_1105;
         param1["itemgrid"] = const_1029;
         param1["itemgrid_horizontal"] = const_505;
         param1["itemgrid_vertical"] = const_661;
         param1["itemlist"] = const_1003;
         param1["itemlist_horizontal"] = const_385;
         param1["itemlist_vertical"] = const_360;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1386;
         param1["menu"] = const_1528;
         param1["menu_item"] = const_1475;
         param1["submenu"] = const_1100;
         param1["minimizebox"] = const_1559;
         param1["notify"] = const_1575;
         param1["null"] = const_730;
         param1["password"] = const_668;
         param1["radiobutton"] = const_881;
         param1["region"] = const_803;
         param1["restorebox"] = const_1367;
         param1["scaler"] = const_887;
         param1["scaler_horizontal"] = const_1373;
         param1["scaler_vertical"] = const_1414;
         param1["scrollbar_horizontal"] = const_485;
         param1["scrollbar_vertical"] = const_741;
         param1["scrollbar_slider_button_up"] = const_1126;
         param1["scrollbar_slider_button_down"] = const_1099;
         param1["scrollbar_slider_button_left"] = const_1116;
         param1["scrollbar_slider_button_right"] = const_979;
         param1["scrollbar_slider_bar_horizontal"] = const_1058;
         param1["scrollbar_slider_bar_vertical"] = const_1090;
         param1["scrollbar_slider_track_horizontal"] = const_1014;
         param1["scrollbar_slider_track_vertical"] = const_1150;
         param1["scrollable_itemlist"] = const_1562;
         param1["scrollable_itemlist_vertical"] = const_428;
         param1["scrollable_itemlist_horizontal"] = const_1037;
         param1["selector"] = const_811;
         param1["selector_list"] = const_791;
         param1["submenu"] = const_1100;
         param1["tab_button"] = const_471;
         param1["tab_container_button"] = const_1075;
         param1["tab_context"] = const_330;
         param1["tab_content"] = const_1050;
         param1["tab_selector"] = const_680;
         param1["text"] = const_517;
         param1["input"] = const_761;
         param1["toolbar"] = const_1446;
         param1["tooltip"] = const_354;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
