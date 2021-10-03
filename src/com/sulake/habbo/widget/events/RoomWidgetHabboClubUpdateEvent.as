package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_239:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2667:int = 0;
      
      private var var_2665:int = 0;
      
      private var var_2666:int = 0;
      
      private var var_2668:Boolean = false;
      
      private var var_2507:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_239,param6,param7);
         this.var_2667 = param1;
         this.var_2665 = param2;
         this.var_2666 = param3;
         this.var_2668 = param4;
         this.var_2507 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2667;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2665;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2666;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2668;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2507;
      }
   }
}
