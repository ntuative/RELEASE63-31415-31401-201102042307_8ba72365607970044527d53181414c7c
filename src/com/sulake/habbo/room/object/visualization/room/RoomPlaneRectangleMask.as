package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2249:Number = 0.0;
      
      private var var_2248:Number = 0.0;
      
      private var var_2349:Number = 0.0;
      
      private var var_2350:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2249 = param1;
         this.var_2248 = param2;
         this.var_2349 = param3;
         this.var_2350 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2249;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2248;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2349;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2350;
      }
   }
}
