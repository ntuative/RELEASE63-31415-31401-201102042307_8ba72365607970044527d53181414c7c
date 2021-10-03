package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1579:int = 0;
      
      private var var_1580:int = 0;
      
      private var var_2669:int = 0;
      
      private var var_2670:Boolean = false;
      
      private var var_2158:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1579 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1580 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2669 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2670 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2158 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1579;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1580;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2669;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2670;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2158;
      }
   }
}
