package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_426:String = "RWTDUE_TEASER_DATA";
      
      public static const const_744:String = "RWTDUE_GIFT_DATA";
      
      public static const const_615:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var _objectId:int;
      
      private var _data:String;
      
      private var var_374:int;
      
      private var var_167:String;
      
      private var var_2273:String;
      
      private var var_2271:Boolean;
      
      private var var_2272:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_374;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2273;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2271;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2272;
      }
      
      public function set status(param1:int) : void
      {
         this.var_374 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2273 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2271 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2272 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this._objectId = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_167;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_167 = param1;
      }
   }
}
