package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_513:ToolbarIconGroup;
      
      private var var_767:String;
      
      private var var_1444:String;
      
      private var var_2775:String;
      
      private var var_1111:Number;
      
      private var var_766:Array;
      
      private var var_1187:Array;
      
      private var _region:IRegionWindow;
      
      private var _icon:IBitmapWrapperWindow;
      
      private var var_360:ITextWindow;
      
      private var _events:IEventDispatcher;
      
      private var _bitmapData:BitmapData;
      
      private var var_1874:Array;
      
      private var var_1189:Array;
      
      private var var_1445:String = "-1";
      
      private var var_1190:String = "-1";
      
      private var var_303:ToolbarBarMenuAnimator;
      
      private var var_1188:ToolbarIconBouncer;
      
      private var var_632:ToolbarIconAnimator;
      
      private var var_1191:Boolean = false;
      
      private var _state:String = "-1";
      
      private var _x:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_959:Timer;
      
      private var var_1443:Timer;
      
      private var var_2646:int;
      
      private var var_2206:int;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         this.var_766 = new Array();
         this.var_1187 = new Array();
         this.var_1188 = new ToolbarIconBouncer(0.8,1);
         super();
         this.var_513 = param1;
         this._windowManager = param2;
         this._assetLibrary = param3;
         this.var_767 = param4;
         this._events = param5;
         this.var_303 = param6;
         this.var_1443 = new Timer(40,40);
         this.var_1443.addEventListener(TimerEvent.TIMER,this.updateBouncer);
         var _loc7_:XmlAsset = this._assetLibrary.getAssetByName("toolbar_icon_xml") as XmlAsset;
         this._region = param2.buildFromXML(_loc7_.content as XML) as IRegionWindow;
         this._region.procedure = this.onMouseEvent;
         this._region.visible = false;
         this._icon = this._region.findChildByName("icon") as IBitmapWrapperWindow;
         this._icon.addEventListener(WindowEvent.const_46,this.onWindowResized);
         this.var_360 = this._region.findChildByName("label") as ITextWindow;
      }
      
      public function dispose() : void
      {
         if(this._icon != null)
         {
            this._icon.dispose();
            this._icon = null;
         }
         if(this.var_360 != null)
         {
            this.var_360.dispose();
            this.var_360 = null;
         }
         if(this._region != null)
         {
            this._region.dispose();
            this._region = null;
         }
         this.var_766 = null;
         this.var_1187 = null;
         this.exists = false;
         this._windowManager = null;
         this._events = null;
         this.var_303 = null;
         this.var_632 = null;
         this._bitmapData = null;
      }
      
      public function get iconId() : String
      {
         return this.var_767;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return this.var_513;
      }
      
      public function set exists(param1:Boolean) : void
      {
         this.var_1191 = param1;
         if(this._region != null)
         {
            this._region.visible = this.var_1191;
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         this.var_1874 = new Array();
         this.var_1189 = new Array();
         this.var_1444 = param1.@id;
         this.var_2646 = int(param1.@window_offset_from_icon);
         this.var_2206 = int(param1.@window_margin);
         this.var_2775 = param1.@label;
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               this.var_1445 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               this.var_1190 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               this.var_1189.push(_loc5_.id);
               this.var_1874.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(this.var_1445 == "-1")
                  {
                     this.var_1445 = _loc5_.id;
                  }
                  if(this.var_1190 == "-1")
                  {
                     this.var_1190 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         this._state = this.var_1190;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         this.exists = true;
         this._bitmapData = param1;
         this.setLabel();
         this.setAnimator();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         this.setLabel();
         this.exists = param1;
         this.setAnimator();
      }
      
      private function setAnimator() : void
      {
         if(this.var_959 != null)
         {
            this.var_959.stop();
            this.var_959 = null;
         }
         var _loc1_:StateItem = this.getCurrentStateObject();
         if(_loc1_ != null && this.var_1191)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            this.var_632 = new ToolbarIconAnimator(_loc1_,this._assetLibrary,this._icon,this._x,this.var_171,this._bitmapData);
            if(this.var_632.frameCount > 0)
            {
               this.var_959 = new Timer(_loc1_.timer);
               this.var_959.addEventListener(TimerEvent.TIMER,this.updateAnimator);
               this.var_959.start();
            }
            if(_loc1_.bounce)
            {
               this.var_1188.reset(-7);
               this.var_1443.reset();
               this.var_1443.start();
            }
         }
         else
         {
            this.var_632 = null;
            this._icon.bitmap = null;
         }
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(this.var_766.indexOf(param1) < 0)
         {
            this.var_766.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            this.var_1187.push(_loc4_);
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return this.var_766.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!this.docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = this.var_1187[this.var_766.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(this.var_303 != null)
         {
            this.var_303.animateWindowIn(this,param1,param2,this.var_767,param3,param4,this.getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(this.var_303 != null)
         {
            this.var_303.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(this.var_303 != null)
         {
            this.var_303.positionWindow(this,param1,param2,this.var_767,param3,this.getMenuYieldList(param1));
         }
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(this.var_303 != null)
         {
            this.var_303.hideWindow(param1,param2,this.var_767,param3);
         }
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return this.getStateObject(this._state);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return this.var_1874[this.var_1189.indexOf(param1)];
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!this.docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = this.var_1187[this.var_766.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function changePosition(param1:Number) : void
      {
         this.var_1111 = param1;
         this.updateRegion();
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
         this.exists = true;
         this.setAnimator();
         this.setTooltip();
         this.setLabel();
      }
      
      private function setTooltip() : void
      {
         if(this._region == null)
         {
            return;
         }
         var _loc1_:StateItem = this.getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            this._region.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            this._region.toolTipCaption = "${toolbar.icon.tooltip." + this.var_1444.toLowerCase() + "}";
         }
         this._region.toolTipDelay = 100;
      }
      
      private function setLabel() : void
      {
         var _loc1_:StateItem = this.getCurrentStateObject();
         if(_loc1_ != null && _loc1_.label != null)
         {
            this.var_360.caption = "${toolbar.icon.label." + _loc1_.label + "}";
         }
         else
         {
            this.var_360.caption = "${toolbar.icon.label." + this.var_1444.toLowerCase() + "}";
         }
         this.updateRegion();
      }
      
      public function get window() : IWindow
      {
         return this._region;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1191;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return this.var_2646;
      }
      
      public function get windowMargin() : Number
      {
         return this.var_2206 + this.var_513.windowMargin;
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(this.var_632 != null && this._icon != null)
         {
            this.var_632.update(this._icon);
            if(this.var_632.hasNextState())
            {
               this.state = this.var_632.nextState;
            }
         }
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(this.var_1188 != null && this._icon != null)
         {
            this.var_1188.update();
            this._icon.y = this.var_1188.location;
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!this.var_1191)
         {
            return;
         }
         var _loc3_:StateItem = this.getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(this.var_303)
               {
                  this.var_303.repositionWindow(this.var_767,true);
               }
               if(this._events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_40);
                  _loc4_.iconId = this.var_767;
                  _loc4_.iconName = this.var_1444;
                  this._events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(this.var_1189.length > 0)
               {
                  if(_loc3_.hasStateOver)
                  {
                     this.state = _loc3_.stateOver;
                  }
                  else
                  {
                     this.state = this.var_1445;
                  }
               }
               break;
            case WindowMouseEvent.const_25:
               if(this.var_1189.length > 0)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     this.state = _loc3_.defaultState;
                  }
                  else
                  {
                     this.state = this.var_1190;
                  }
               }
         }
      }
      
      private function updateRegion() : void
      {
         if(this._region == null || this._icon == null)
         {
            return;
         }
         this.var_360.y = this._icon.height;
         this._region.width = Math.max(this._icon.width,this.var_360.width);
         this._region.height = this._icon.height + this.var_360.height;
         this._icon.x = (this._region.width - this._icon.width) / 2;
         this.var_360.x = (this._region.width - this.var_360.width) / 2;
         var _loc1_:Boolean = this.var_513.orientation == "LEFT" || this.var_513.orientation == "RIGHT";
         if(_loc1_)
         {
            this._x = (this.var_513.toolbarUsableWidth - this._region.width) / 2;
            this.var_171 = this.var_1111 + (this.var_513.iconSize - this._region.height) / 2;
         }
         else
         {
            this._x = this.var_1111 + (this.var_513.iconSize - this._region.width) / 2;
            this.var_171 = (this.var_513.toolbarUsableWidth - this._region.height) / 2;
         }
         this._region.x = this._x;
         this._region.y = this.var_171;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         this.updateRegion();
      }
   }
}
