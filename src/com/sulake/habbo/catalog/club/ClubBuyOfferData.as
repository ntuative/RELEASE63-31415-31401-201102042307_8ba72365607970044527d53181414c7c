package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1517:String;
      
      private var var_1735:int;
      
      private var var_2076:Boolean;
      
      private var var_2078:Boolean;
      
      private var var_2072:int;
      
      private var var_2073:int;
      
      private var var_427:ICatalogPage;
      
      private var var_2075:int;
      
      private var var_2074:int;
      
      private var var_2077:int;
      
      private var var_2606:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1517 = param2;
         this.var_1735 = param3;
         this.var_2076 = param4;
         this.var_2078 = param5;
         this.var_2072 = param6;
         this.var_2073 = param7;
         this.var_2075 = param8;
         this.var_2074 = param9;
         this.var_2077 = param10;
      }
      
      public function dispose() : void
      {
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_188;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1735;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_427;
      }
      
      public function get priceType() : String
      {
         return Offer.const_764;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1517;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_427 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2606;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2606 = param1;
      }
   }
}
