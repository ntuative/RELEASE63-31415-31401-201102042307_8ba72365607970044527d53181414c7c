package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_907:int = 10;
      
      private static const const_581:int = 20;
      
      private static const const_1216:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_278:Array;
      
      private var var_743:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_278 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_743)
            {
               this.var_743 = true;
               this.var_278 = new Array();
               this.var_278.push(const_1216);
               this.var_278.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_907)
         {
            if(this.var_743)
            {
               this.var_743 = false;
               this.var_278 = new Array();
               this.var_278.push(const_907 + param1);
               this.var_278.push(const_581 + param1);
               this.var_278.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
