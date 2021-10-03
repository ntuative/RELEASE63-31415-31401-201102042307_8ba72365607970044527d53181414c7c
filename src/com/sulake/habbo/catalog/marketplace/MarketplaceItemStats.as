package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1997:int;
      
      private var var_1998:int;
      
      private var var_1995:int;
      
      private var _dayOffsets:Array;
      
      private var var_1634:Array;
      
      private var var_1633:Array;
      
      private var var_1996:int;
      
      private var var_1999:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_1997 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1998 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_1995 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1634 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1633 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_1996 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_1999 = param1;
      }
   }
}
