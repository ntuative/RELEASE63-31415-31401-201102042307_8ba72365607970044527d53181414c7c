package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_222:String = "ROE_MOUSE_CLICK";
      
      public static const const_1723:String = "ROE_MOUSE_ENTER";
      
      public static const const_499:String = "ROE_MOUSE_MOVE";
      
      public static const const_1907:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1716:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_417:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1713:String = "";
      
      private var var_2173:Boolean;
      
      private var var_2172:Boolean;
      
      private var var_2175:Boolean;
      
      private var var_2174:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1713 = param2;
         this.var_2173 = param5;
         this.var_2172 = param6;
         this.var_2175 = param7;
         this.var_2174 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1713;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2173;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2172;
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
