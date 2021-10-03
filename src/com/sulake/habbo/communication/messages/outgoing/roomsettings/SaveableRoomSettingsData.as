package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1519:String;
      
      private var var_2439:int;
      
      private var _password:String;
      
      private var var_1417:int;
      
      private var var_2458:int;
      
      private var var_791:Array;
      
      private var var_2454:Array;
      
      private var var_2437:Boolean;
      
      private var var_2459:Boolean;
      
      private var var_2457:Boolean;
      
      private var var_2460:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2437;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2437 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2459;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2459 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2457;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2457 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2460;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2460 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1519;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1519 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2439;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2439 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1417;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1417 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2458;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2458 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_791;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_791 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2454;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2454 = param1;
      }
   }
}
