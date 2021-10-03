package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1517:String;
      
      private var var_1735:int;
      
      private var var_2076:Boolean;
      
      private var var_2078:Boolean;
      
      private var var_2072:int;
      
      private var var_2073:int;
      
      private var var_2075:int;
      
      private var var_2074:int;
      
      private var var_2077:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1517 = param1.readString();
         this.var_1735 = param1.readInteger();
         this.var_2076 = param1.readBoolean();
         this.var_2078 = param1.readBoolean();
         this.var_2072 = param1.readInteger();
         this.var_2073 = param1.readInteger();
         this.var_2075 = param1.readInteger();
         this.var_2074 = param1.readInteger();
         this.var_2077 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1517;
      }
      
      public function get price() : int
      {
         return this.var_1735;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2076;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2078;
      }
      
      public function get periods() : int
      {
         return this.var_2072;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2073;
      }
      
      public function get year() : int
      {
         return this.var_2075;
      }
      
      public function get month() : int
      {
         return this.var_2074;
      }
      
      public function get day() : int
      {
         return this.var_2077;
      }
   }
}
