package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1440:String = "WE_CREATE";
      
      public static const const_1364:String = "WE_CREATED";
      
      public static const const_1593:String = "WE_DESTROY";
      
      public static const const_274:String = "WE_DESTROYED";
      
      public static const const_1421:String = "WE_OPEN";
      
      public static const const_1452:String = "WE_OPENED";
      
      public static const const_1592:String = "WE_CLOSE";
      
      public static const const_1576:String = "WE_CLOSED";
      
      public static const const_1608:String = "WE_FOCUS";
      
      public static const const_279:String = "WE_FOCUSED";
      
      public static const const_1486:String = "WE_UNFOCUS";
      
      public static const const_1631:String = "WE_UNFOCUSED";
      
      public static const const_1571:String = "WE_ACTIVATE";
      
      public static const const_1504:String = "WE_ACTIVATED";
      
      public static const const_1441:String = "WE_DEACTIVATE";
      
      public static const const_708:String = "WE_DEACTIVATED";
      
      public static const const_556:String = "WE_SELECT";
      
      public static const const_56:String = "WE_SELECTED";
      
      public static const const_669:String = "WE_UNSELECT";
      
      public static const const_815:String = "WE_UNSELECTED";
      
      public static const const_1851:String = "WE_ATTACH";
      
      public static const const_1705:String = "WE_ATTACHED";
      
      public static const const_1905:String = "WE_DETACH";
      
      public static const const_1804:String = "WE_DETACHED";
      
      public static const const_1488:String = "WE_LOCK";
      
      public static const const_1591:String = "WE_LOCKED";
      
      public static const const_1508:String = "WE_UNLOCK";
      
      public static const const_1436:String = "WE_UNLOCKED";
      
      public static const const_619:String = "WE_ENABLE";
      
      public static const const_297:String = "WE_ENABLED";
      
      public static const const_727:String = "WE_DISABLE";
      
      public static const const_240:String = "WE_DISABLED";
      
      public static const const_1532:String = "WE_RELOCATE";
      
      public static const const_390:String = "WE_RELOCATED";
      
      public static const const_1369:String = "WE_RESIZE";
      
      public static const const_46:String = "WE_RESIZED";
      
      public static const const_1362:String = "WE_MINIMIZE";
      
      public static const const_1531:String = "WE_MINIMIZED";
      
      public static const const_1560:String = "WE_MAXIMIZE";
      
      public static const const_1628:String = "WE_MAXIMIZED";
      
      public static const const_1430:String = "WE_RESTORE";
      
      public static const const_1566:String = "WE_RESTORED";
      
      public static const const_1815:String = "WE_ARRANGE";
      
      public static const const_1736:String = "WE_ARRANGED";
      
      public static const const_99:String = "WE_UPDATE";
      
      public static const const_1771:String = "WE_UPDATED";
      
      public static const const_1831:String = "WE_CHILD_RELOCATE";
      
      public static const const_430:String = "WE_CHILD_RELOCATED";
      
      public static const const_1729:String = "WE_CHILD_RESIZE";
      
      public static const const_290:String = "WE_CHILD_RESIZED";
      
      public static const const_1848:String = "WE_CHILD_REMOVE";
      
      public static const const_575:String = "WE_CHILD_REMOVED";
      
      public static const const_1799:String = "WE_PARENT_RELOCATE";
      
      public static const const_1791:String = "WE_PARENT_RELOCATED";
      
      public static const const_1832:String = "WE_PARENT_RESIZE";
      
      public static const const_1463:String = "WE_PARENT_RESIZED";
      
      public static const const_182:String = "WE_OK";
      
      public static const const_645:String = "WE_CANCEL";
      
      public static const const_102:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_442:String = "WE_SCROLL";
      
      public static const const_153:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1963:IWindow;
      
      protected var var_1962:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1963 = param3;
         this.var_1962 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1963;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1962 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1962;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
