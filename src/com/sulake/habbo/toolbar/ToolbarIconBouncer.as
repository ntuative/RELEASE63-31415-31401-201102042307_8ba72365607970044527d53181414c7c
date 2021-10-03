package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2575:Number;
      
      private var var_1581:Number;
      
      private var var_931:Number;
      
      private var var_930:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2575 = param1;
         this.var_1581 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_931 = param1;
         this.var_930 = 0;
      }
      
      public function update() : void
      {
         this.var_931 += this.var_1581;
         this.var_930 += this.var_931;
         if(this.var_930 > 0)
         {
            this.var_930 = 0;
            this.var_931 = this.var_2575 * -1 * this.var_931;
         }
      }
      
      public function get location() : Number
      {
         return this.var_930;
      }
   }
}
