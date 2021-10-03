package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_868:String = "";
      
      public static const const_573:int = 0;
      
      public static const const_560:int = 255;
      
      public static const const_688:Boolean = false;
      
      public static const const_527:int = 0;
      
      public static const const_495:int = 0;
      
      public static const const_540:int = 0;
      
      public static const const_1015:int = 1;
      
      public static const const_973:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2244:String = "";
      
      private var var_1698:int = 0;
      
      private var var_2168:int = 255;
      
      private var var_2243:Boolean = false;
      
      private var var_2246:int = 0;
      
      private var var_2247:int = 0;
      
      private var var_2245:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2244 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2244;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1698 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1698;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2168 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2168;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2243 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2243;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2246 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2246;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2247 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2247;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2245 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2245;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
