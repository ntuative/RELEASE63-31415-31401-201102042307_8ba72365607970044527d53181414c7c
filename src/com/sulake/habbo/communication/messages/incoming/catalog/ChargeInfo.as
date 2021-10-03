package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2640:int;
      
      private var var_2661:int;
      
      private var var_1026:int;
      
      private var var_1027:int;
      
      private var var_1570:int;
      
      private var var_2662:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2640 = param1.readInteger();
         this.var_2661 = param1.readInteger();
         this.var_1026 = param1.readInteger();
         this.var_1027 = param1.readInteger();
         this.var_1570 = param1.readInteger();
         this.var_2662 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2640;
      }
      
      public function get charges() : int
      {
         return this.var_2661;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1026;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1027;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2662;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1570;
      }
   }
}
