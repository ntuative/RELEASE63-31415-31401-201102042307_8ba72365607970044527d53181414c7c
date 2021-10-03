package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2097:int;
      
      private var var_1471:String;
      
      private var _objId:int;
      
      private var var_1522:int;
      
      private var _category:int;
      
      private var var_1966:String;
      
      private var var_2101:Boolean;
      
      private var var_2100:Boolean;
      
      private var var_2096:Boolean;
      
      private var var_2099:Boolean;
      
      private var var_2098:int;
      
      private var var_1295:int;
      
      private var var_1569:String = "";
      
      private var var_2351:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2097 = param1;
         this.var_1471 = param2;
         this._objId = param3;
         this.var_1522 = param4;
         this._category = param5;
         this.var_1966 = param6;
         this.var_2101 = param7;
         this.var_2100 = param8;
         this.var_2096 = param9;
         this.var_2099 = param10;
         this.var_2098 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1569 = param1;
         this.var_1295 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2097;
      }
      
      public function get itemType() : String
      {
         return this.var_1471;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1522;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1966;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2101;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2100;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2096;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2099;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2098;
      }
      
      public function get slotId() : String
      {
         return this.var_1569;
      }
      
      public function get songId() : int
      {
         return this.var_2351;
      }
      
      public function get extra() : int
      {
         return this.var_1295;
      }
   }
}
