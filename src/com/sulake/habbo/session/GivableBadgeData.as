package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_279:int;
      
      private var var_2020:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_279 = param1;
         this.var_2020 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_279;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2020;
      }
   }
}
