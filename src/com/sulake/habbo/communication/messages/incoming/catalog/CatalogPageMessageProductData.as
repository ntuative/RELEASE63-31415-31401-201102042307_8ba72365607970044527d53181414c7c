package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_82:String = "i";
      
      public static const const_84:String = "s";
      
      public static const const_226:String = "e";
       
      
      private var var_1576:String;
      
      private var var_2395:int;
      
      private var var_1288:String;
      
      private var var_1289:int;
      
      private var var_1575:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1576 = param1.readString();
         this.var_2395 = param1.readInteger();
         this.var_1288 = param1.readString();
         this.var_1289 = param1.readInteger();
         this.var_1575 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1576;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2395;
      }
      
      public function get extraParam() : String
      {
         return this.var_1288;
      }
      
      public function get productCount() : int
      {
         return this.var_1289;
      }
      
      public function get expiration() : int
      {
         return this.var_1575;
      }
   }
}
