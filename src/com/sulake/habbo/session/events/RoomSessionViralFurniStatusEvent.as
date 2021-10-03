package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_528:String = "RSVFS_STATUS";
      
      public static const const_463:String = "RSVFS_RECEIVED";
       
      
      private var var_167:String;
      
      private var _objectId:int;
      
      private var var_374:int = -1;
      
      private var var_1010:String;
      
      private var var_2273:String;
      
      private var var_2271:Boolean;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_374 = this.status;
         this.var_1010 = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get status() : int
      {
         return this.var_374;
      }
      
      public function get shareId() : String
      {
         return this.var_1010;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2273;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2271;
      }
      
      public function set objectId(param1:int) : void
      {
         this._objectId = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_374 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this.var_1010 = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2273 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2271 = param1;
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
