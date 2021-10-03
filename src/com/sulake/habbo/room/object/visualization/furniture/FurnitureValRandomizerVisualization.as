package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_907:int = 20;
      
      private static const const_581:int = 10;
      
      private static const const_1216:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_278:Array;
      
      private var var_743:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_278 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_581)
         {
            if(this.var_743)
            {
               this.var_743 = false;
               this.var_278 = new Array();
               if(_direction == 2)
               {
                  this.var_278.push(const_907 + 5 - param1);
                  this.var_278.push(const_581 + 5 - param1);
               }
               else
               {
                  this.var_278.push(const_907 + param1);
                  this.var_278.push(const_581 + param1);
               }
               this.var_278.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
