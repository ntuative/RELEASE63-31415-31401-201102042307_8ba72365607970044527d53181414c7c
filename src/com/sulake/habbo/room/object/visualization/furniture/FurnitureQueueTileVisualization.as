package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1294:int = 2;
      
      private static const const_1293:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_278:Array;
      
      private var var_1146:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_278 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1294)
         {
            this.var_278 = new Array();
            this.var_278.push(const_1293);
            this.var_1146 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1146 > 0)
         {
            --this.var_1146;
         }
         if(this.var_1146 == 0)
         {
            if(this.var_278.length > 0)
            {
               super.setAnimation(this.var_278.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
