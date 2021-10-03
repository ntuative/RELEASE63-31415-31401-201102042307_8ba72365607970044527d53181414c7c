package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2180:String;
      
      private var var_2182:Array;
      
      private var var_2181:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2180 = param1;
         this.var_2182 = param2;
         this.var_2181 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2180;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2182;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2181;
      }
   }
}
