package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1993:int;
      
      private var var_1471:String;
      
      private var var_1986:int;
      
      private var var_1990:int;
      
      private var _category:int;
      
      private var var_1966:String;
      
      private var var_1295:int;
      
      private var var_1991:int;
      
      private var var_1992:int;
      
      private var var_1987:int;
      
      private var var_1989:int;
      
      private var var_1988:Boolean;
      
      private var var_2785:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_1993 = param1;
         this.var_1471 = param2;
         this.var_1986 = param3;
         this.var_1990 = param4;
         this._category = param5;
         this.var_1966 = param6;
         this.var_1295 = param7;
         this.var_1991 = param8;
         this.var_1992 = param9;
         this.var_1987 = param10;
         this.var_1989 = param11;
         this.var_1988 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_1993;
      }
      
      public function get itemType() : String
      {
         return this.var_1471;
      }
      
      public function get roomItemID() : int
      {
         return this.var_1986;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_1990;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1966;
      }
      
      public function get extra() : int
      {
         return this.var_1295;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_1991;
      }
      
      public function get creationDay() : int
      {
         return this.var_1992;
      }
      
      public function get creationMonth() : int
      {
         return this.var_1987;
      }
      
      public function get creationYear() : int
      {
         return this.var_1989;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_1988;
      }
      
      public function get songID() : int
      {
         return this.var_1295;
      }
   }
}
