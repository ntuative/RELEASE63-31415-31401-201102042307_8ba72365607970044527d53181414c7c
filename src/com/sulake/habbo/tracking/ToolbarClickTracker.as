package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1235:IHabboTracking;
      
      private var var_1524:Boolean = false;
      
      private var var_2508:int = 0;
      
      private var var_1784:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1235 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1235 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1524 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2508 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1524)
         {
            return;
         }
         ++this.var_1784;
         if(this.var_1784 <= this.var_2508)
         {
            this.var_1235.track("toolbar",param1);
         }
      }
   }
}
