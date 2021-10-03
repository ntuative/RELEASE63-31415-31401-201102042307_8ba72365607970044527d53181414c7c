package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1707:int;
      
      private var var_2399:int;
      
      private var var_1126:int;
      
      private var var_520:Number;
      
      private var var_2398:Boolean;
      
      private var var_2397:int;
      
      private var var_1706:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2399 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2397 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2398 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1126;
         if(this.var_1126 == 1)
         {
            this.var_520 = param1;
            this.var_1707 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1126);
            this.var_520 = this.var_520 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2398 && param3 - this.var_1707 >= this.var_2399 && this.var_1706 < this.var_2397)
         {
            _loc5_ = 1000 / this.var_520;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1706;
            this.var_1707 = param3;
            this.var_1126 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
