package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_569:uint = 0;
      
      public static const const_1587:uint = 1;
      
      public static const const_1926:int = 0;
      
      public static const const_1721:int = 1;
      
      public static const const_1913:int = 2;
      
      public static const const_1795:int = 3;
      
      public static const const_1420:int = 4;
      
      public static const const_384:int = 5;
      
      public static var var_1472:IMouseCursor;
      
      public static var var_370:IEventQueue;
      
      private static var var_596:IEventProcessor;
      
      private static var var_1715:uint = const_569;
      
      private static var stage:Stage;
      
      private static var var_158:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2415:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_185:DisplayObjectContainer;
      
      protected var var_2782:Boolean = true;
      
      protected var var_1218:Error;
      
      protected var var_1973:int = -1;
      
      protected var var_1220:IInternalWindowServices;
      
      protected var var_1478:IWindowParser;
      
      protected var var_2735:IWindowFactory;
      
      protected var var_138:IDesktopWindow;
      
      protected var var_1479:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_527:Boolean = false;
      
      private var var_2414:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_158 = param2;
         this._localization = param4;
         this.var_185 = param5;
         this.var_1220 = new ServiceManager(this,param5);
         this.var_2735 = param3;
         this.var_1478 = new WindowParser(this);
         this.var_2415 = param7;
         if(!stage)
         {
            if(this.var_185 is Stage)
            {
               stage = this.var_185 as Stage;
            }
            else if(this.var_185.stage)
            {
               stage = this.var_185.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_138 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_185.addChild(this.var_138.getDisplayObject());
         this.var_185.doubleClickEnabled = true;
         this.var_185.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_158,this.var_138,this.var_138,null,this.var_2415);
         inputMode = const_569;
         this.var_1479 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1715;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_370)
         {
            if(var_370 is IDisposable)
            {
               IDisposable(var_370).dispose();
            }
         }
         if(var_596)
         {
            if(var_596 is IDisposable)
            {
               IDisposable(var_596).dispose();
            }
         }
         switch(value)
         {
            case const_569:
               var_370 = new MouseEventQueue(stage);
               var_596 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1587:
               var_370 = new TabletEventQueue(stage);
               var_596 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_569;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_185.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_185.removeChild(IGraphicContextHost(this.var_138).getGraphicContext(true) as DisplayObject);
            this.var_138.destroy();
            this.var_138 = null;
            this.var_1479.destroy();
            this.var_1479 = null;
            if(this.var_1220 is IDisposable)
            {
               IDisposable(this.var_1220).dispose();
            }
            this.var_1220 = null;
            this.var_1478.dispose();
            this.var_1478 = null;
            var_158 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1218;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1973;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1218 = param2;
         this.var_1973 = param1;
         if(this.var_2782)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1218 = null;
         this.var_1973 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1220;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1478;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2735;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_138;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1472 == null)
         {
            var_1472 = new MouseCursorControl(this.var_185);
         }
         return var_1472;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_138.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1420,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1479;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_138,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_138)
         {
            this.var_138 = null;
         }
         if(param1.state != WindowState.const_484)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_158.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_527 = true;
         if(this.var_1218)
         {
            throw this.var_1218;
         }
         var_596.process(this._eventProcessorState,var_370);
         this.var_527 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2414 = true;
         var_158.update(param1);
         this.var_2414 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_138 != null && !this.var_138.disposed)
         {
            if(this.var_185 is Stage)
            {
               this.var_138.width = Stage(this.var_185).stageWidth;
               this.var_138.height = Stage(this.var_185).stageHeight;
            }
            else
            {
               this.var_138.width = this.var_185.width;
               this.var_138.height = this.var_185.height;
            }
         }
      }
   }
}
