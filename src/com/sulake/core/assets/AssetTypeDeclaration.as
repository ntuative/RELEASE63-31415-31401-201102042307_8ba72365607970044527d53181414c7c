package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2274:String;
      
      private var var_2275:Class;
      
      private var var_2276:Class;
      
      private var var_1628:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2274 = param1;
         this.var_2275 = param2;
         this.var_2276 = param3;
         if(rest == null)
         {
            this.var_1628 = new Array();
         }
         else
         {
            this.var_1628 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2274;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2275;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2276;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1628;
      }
   }
}
