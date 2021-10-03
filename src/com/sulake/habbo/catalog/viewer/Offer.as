package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1355:String = "pricing_model_unknown";
      
      public static const const_469:String = "pricing_model_single";
      
      public static const const_477:String = "pricing_model_multi";
      
      public static const const_460:String = "pricing_model_bundle";
      
      public static const const_1512:String = "price_type_none";
      
      public static const const_764:String = "price_type_credits";
      
      public static const const_1057:String = "price_type_activitypoints";
      
      public static const const_1052:String = "price_type_credits_and_activitypoints";
       
      
      private var var_669:String;
      
      private var var_1028:String;
      
      private var _offerId:int;
      
      private var var_1571:String;
      
      private var var_1026:int;
      
      private var var_1027:int;
      
      private var var_1570:int;
      
      private var var_427:ICatalogPage;
      
      private var var_670:IProductContainer;
      
      private var var_2150:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1571 = param1.localizationId;
         this.var_1026 = param1.priceInCredits;
         this.var_1027 = param1.priceInActivityPoints;
         this.var_1570 = param1.activityPointType;
         this.var_427 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_427;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1571;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1026;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1027;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1570;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_670;
      }
      
      public function get pricingModel() : String
      {
         return this.var_669;
      }
      
      public function get priceType() : String
      {
         return this.var_1028;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2150;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2150 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1571 = "";
         this.var_1026 = 0;
         this.var_1027 = 0;
         this.var_1570 = 0;
         this.var_427 = null;
         if(this.var_670 != null)
         {
            this.var_670.dispose();
            this.var_670 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_669)
         {
            case const_469:
               this.var_670 = new SingleProductContainer(this,param1);
               break;
            case const_477:
               this.var_670 = new MultiProductContainer(this,param1);
               break;
            case const_460:
               this.var_670 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_669);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_669 = const_469;
            }
            else
            {
               this.var_669 = const_477;
            }
         }
         else if(param1.length > 1)
         {
            this.var_669 = const_460;
         }
         else
         {
            this.var_669 = const_1355;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1026 > 0 && this.var_1027 > 0)
         {
            this.var_1028 = const_1052;
         }
         else if(this.var_1026 > 0)
         {
            this.var_1028 = const_764;
         }
         else if(this.var_1027 > 0)
         {
            this.var_1028 = const_1057;
         }
         else
         {
            this.var_1028 = const_1512;
         }
      }
   }
}
