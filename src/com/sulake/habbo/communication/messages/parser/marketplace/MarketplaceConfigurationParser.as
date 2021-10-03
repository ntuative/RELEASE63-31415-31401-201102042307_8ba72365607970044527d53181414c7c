package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1286:Boolean;
      
      private var var_2568:int;
      
      private var var_1857:int;
      
      private var var_1858:int;
      
      private var var_2567:int;
      
      private var var_2569:int;
      
      private var var_2566:int;
      
      private var var_2060:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1286;
      }
      
      public function get commission() : int
      {
         return this.var_2568;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1857;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1858;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2569;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2567;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2566;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2060;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1286 = param1.readBoolean();
         this.var_2568 = param1.readInteger();
         this.var_1857 = param1.readInteger();
         this.var_1858 = param1.readInteger();
         this.var_2569 = param1.readInteger();
         this.var_2567 = param1.readInteger();
         this.var_2566 = param1.readInteger();
         this.var_2060 = param1.readInteger();
         return true;
      }
   }
}
