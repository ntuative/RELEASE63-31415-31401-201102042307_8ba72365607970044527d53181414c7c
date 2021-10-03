package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_188:int = 0;
       
      
      private var var_2160:int = 0;
      
      private var var_1291:Dictionary;
      
      private var var_1579:int = 0;
      
      private var var_1580:int = 0;
      
      private var var_2158:Boolean = false;
      
      private var var_2159:int = 0;
      
      private var var_2161:int = 0;
      
      public function Purse()
      {
         this.var_1291 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2160;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2160 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1579;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1579 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1580;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1580 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1579 > 0 || this.var_1580 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2158;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2158 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2159;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2159 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2161;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2161 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1291;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1291 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1291[param1];
      }
   }
}
