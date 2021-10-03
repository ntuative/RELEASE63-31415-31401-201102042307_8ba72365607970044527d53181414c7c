package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1997:int;
      
      private var var_1998:int;
      
      private var var_1995:int;
      
      private var _dayOffsets:Array;
      
      private var var_1634:Array;
      
      private var var_1633:Array;
      
      private var var_1996:int;
      
      private var var_1999:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_1997;
      }
      
      public function get offerCount() : int
      {
         return this.var_1998;
      }
      
      public function get historyLength() : int
      {
         return this.var_1995;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1634;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1633;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_1996;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_1999;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1997 = param1.readInteger();
         this.var_1998 = param1.readInteger();
         this.var_1995 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1634 = [];
         this.var_1633 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1634.push(param1.readInteger());
            this.var_1633.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1999 = param1.readInteger();
         this.var_1996 = param1.readInteger();
         return true;
      }
   }
}
