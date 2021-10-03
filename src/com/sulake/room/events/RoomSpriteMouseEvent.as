package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1713:String = "";
      
      private var var_1894:String = "";
      
      private var var_2070:String = "";
      
      private var var_2372:Number = 0;
      
      private var var_2374:Number = 0;
      
      private var var_2375:Number = 0;
      
      private var var_2373:Number = 0;
      
      private var var_2172:Boolean = false;
      
      private var var_2173:Boolean = false;
      
      private var var_2175:Boolean = false;
      
      private var var_2174:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1713 = param2;
         this.var_1894 = param3;
         this.var_2070 = param4;
         this.var_2372 = param5;
         this.var_2374 = param6;
         this.var_2375 = param7;
         this.var_2373 = param8;
         this.var_2172 = param9;
         this.var_2173 = param10;
         this.var_2175 = param11;
         this.var_2174 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1713;
      }
      
      public function get canvasId() : String
      {
         return this.var_1894;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2070;
      }
      
      public function get screenX() : Number
      {
         return this.var_2372;
      }
      
      public function get screenY() : Number
      {
         return this.var_2374;
      }
      
      public function get localX() : Number
      {
         return this.var_2375;
      }
      
      public function get localY() : Number
      {
         return this.var_2373;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2172;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2173;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2175;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2174;
      }
   }
}
