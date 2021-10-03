package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1571:String;
      
      private var var_1026:int;
      
      private var var_1027:int;
      
      private var var_1570:int;
      
      private var var_1127:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1571 = param1.readString();
         this.var_1026 = param1.readInteger();
         this.var_1027 = param1.readInteger();
         this.var_1570 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1127 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1127.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
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
      
      public function get products() : Array
      {
         return this.var_1127;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1570;
      }
   }
}
