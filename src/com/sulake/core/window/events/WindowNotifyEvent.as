package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1458:String = "WN_CRETAE";
      
      public static const const_1431:String = "WN_CREATED";
      
      public static const const_1170:String = "WN_DESTROY";
      
      public static const const_1065:String = "WN_DESTROYED";
      
      public static const const_975:String = "WN_OPEN";
      
      public static const const_1157:String = "WN_OPENED";
      
      public static const const_1178:String = "WN_CLOSE";
      
      public static const const_1089:String = "WN_CLOSED";
      
      public static const const_1018:String = "WN_FOCUS";
      
      public static const const_1068:String = "WN_FOCUSED";
      
      public static const const_1032:String = "WN_UNFOCUS";
      
      public static const const_1082:String = "WN_UNFOCUSED";
      
      public static const const_1160:String = "WN_ACTIVATE";
      
      public static const const_329:String = "WN_ACTVATED";
      
      public static const const_1134:String = "WN_DEACTIVATE";
      
      public static const const_1113:String = "WN_DEACTIVATED";
      
      public static const const_433:String = "WN_SELECT";
      
      public static const const_380:String = "WN_SELECTED";
      
      public static const const_735:String = "WN_UNSELECT";
      
      public static const const_777:String = "WN_UNSELECTED";
      
      public static const const_1021:String = "WN_LOCK";
      
      public static const const_1044:String = "WN_LOCKED";
      
      public static const const_1010:String = "WN_UNLOCK";
      
      public static const const_1171:String = "WN_UNLOCKED";
      
      public static const const_1081:String = "WN_ENABLE";
      
      public static const const_890:String = "WN_ENABLED";
      
      public static const const_1122:String = "WN_DISABLE";
      
      public static const const_757:String = "WN_DISABLED";
      
      public static const const_646:String = "WN_RESIZE";
      
      public static const const_189:String = "WN_RESIZED";
      
      public static const const_1051:String = "WN_RELOCATE";
      
      public static const const_536:String = "WN_RELOCATED";
      
      public static const const_1011:String = "WN_MINIMIZE";
      
      public static const const_1073:String = "WN_MINIMIZED";
      
      public static const const_1091:String = "WN_MAXIMIZE";
      
      public static const const_1056:String = "WN_MAXIMIZED";
      
      public static const const_1132:String = "WN_RESTORE";
      
      public static const const_1151:String = "WN_RESTORED";
      
      public static const const_1785:String = "WN_ARRANGE";
      
      public static const const_1816:String = "WN_ARRANGED";
      
      public static const const_1845:String = "WN_UPDATE";
      
      public static const const_1821:String = "WN_UPDATED";
      
      public static const const_389:String = "WN_CHILD_ADDED";
      
      public static const const_886:String = "WN_CHILD_REMOVED";
      
      public static const const_273:String = "WN_CHILD_RESIZED";
      
      public static const const_306:String = "WN_CHILD_RELOCATED";
      
      public static const const_213:String = "WN_CHILD_ACTIVATED";
      
      public static const const_431:String = "WN_PARENT_ADDED";
      
      public static const const_982:String = "WN_PARENT_REMOVED";
      
      public static const const_523:String = "WN_PARENT_RESIZED";
      
      public static const const_1179:String = "WN_PARENT_RELOCATED";
      
      public static const const_638:String = "WN_PARENT_ACTIVATED";
      
      public static const const_465:String = "WN_STATE_UPDATED";
      
      public static const const_423:String = "WN_STYLE_UPDATED";
      
      public static const const_481:String = "WN_PARAM_UPDATED";
      
      public static const const_1885:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1963,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
