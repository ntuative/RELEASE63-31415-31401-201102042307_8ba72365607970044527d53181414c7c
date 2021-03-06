package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2756:uint;
      
      private var var_134:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var _windowContext:IWindowContext;
      
      private var var_1119:IMouseDraggingService;
      
      private var var_1117:IMouseScalingService;
      
      private var var_1115:IMouseListenerService;
      
      private var var_1116:IFocusManagerService;
      
      private var var_1118:IToolTipAgentService;
      
      private var var_1114:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2756 = 0;
         this.var_134 = param2;
         this._windowContext = param1;
         this.var_1119 = new WindowMouseDragger(param2);
         this.var_1117 = new WindowMouseScaler(param2);
         this.var_1115 = new WindowMouseListener(param2);
         this.var_1116 = new FocusManager(param2);
         this.var_1118 = new WindowToolTipAgent(param2);
         this.var_1114 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1119 != null)
         {
            this.var_1119.dispose();
            this.var_1119 = null;
         }
         if(this.var_1117 != null)
         {
            this.var_1117.dispose();
            this.var_1117 = null;
         }
         if(this.var_1115 != null)
         {
            this.var_1115.dispose();
            this.var_1115 = null;
         }
         if(this.var_1116 != null)
         {
            this.var_1116.dispose();
            this.var_1116 = null;
         }
         if(this.var_1118 != null)
         {
            this.var_1118.dispose();
            this.var_1118 = null;
         }
         if(this.var_1114 != null)
         {
            this.var_1114.dispose();
            this.var_1114 = null;
         }
         this.var_134 = null;
         this._windowContext = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1119;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1117;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1115;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1116;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1118;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1114;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
