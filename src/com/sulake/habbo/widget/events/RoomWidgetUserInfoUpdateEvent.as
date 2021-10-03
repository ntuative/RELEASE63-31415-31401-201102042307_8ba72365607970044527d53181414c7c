package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_181:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_252:String = "RWUIUE_PEER";
      
      public static const const_1360:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_1101:int = 2;
      
      public static const const_970:int = 3;
      
      public static const const_1599:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1768:String = "";
      
      private var var_2189:int;
      
      private var var_2190:int = 0;
      
      private var var_2187:int = 0;
      
      private var var_555:String = "";
      
      private var var_43:BitmapData = null;
      
      private var var_263:Array;
      
      private var var_1502:Array;
      
      private var var_1258:int = 0;
      
      private var var_2031:String = "";
      
      private var var_2032:int = 0;
      
      private var var_2030:int = 0;
      
      private var var_1498:Boolean = false;
      
      private var var_1766:String = "";
      
      private var var_2357:Boolean = false;
      
      private var var_2355:Boolean = true;
      
      private var var_1103:int = 0;
      
      private var var_2353:Boolean = false;
      
      private var var_2361:Boolean = false;
      
      private var var_2356:Boolean = false;
      
      private var var_2360:Boolean = false;
      
      private var var_2354:Boolean = false;
      
      private var var_2358:Boolean = false;
      
      private var var_2359:int = 0;
      
      private var var_1497:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_263 = [];
         this.var_1502 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1768 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1768;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2189 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2189;
      }
      
      public function set method_1(param1:int) : void
      {
         this.var_2190 = param1;
      }
      
      public function get method_1() : int
      {
         return this.var_2190;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2187 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2187;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_555 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_555;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_43 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_263 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_263;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1502;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1502 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1258 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1258;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2031 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2031;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2357 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2357;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1103 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1103;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2353 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2353;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2361 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2361;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2356 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2356;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2360 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2360;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2354 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2354;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2358 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2358;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2359 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2359;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2355 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2355;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1497 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1497;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2032 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2032;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2030 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2030;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1498 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1498;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1766 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1766;
      }
   }
}
