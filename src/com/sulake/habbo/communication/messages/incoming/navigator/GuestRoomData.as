package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_337:int;
      
      private var var_772:Boolean;
      
      private var var_805:String;
      
      private var _ownerName:String;
      
      private var var_2439:int;
      
      private var var_2278:int;
      
      private var var_2440:int;
      
      private var var_1519:String;
      
      private var var_2436:int;
      
      private var var_2434:Boolean;
      
      private var var_715:int;
      
      private var var_1417:int;
      
      private var var_2435:String;
      
      private var var_791:Array;
      
      private var var_2438:RoomThumbnailData;
      
      private var var_2437:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_791 = new Array();
         super();
         this.var_337 = param1.readInteger();
         this.var_772 = param1.readBoolean();
         this.var_805 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2439 = param1.readInteger();
         this.var_2278 = param1.readInteger();
         this.var_2440 = param1.readInteger();
         this.var_1519 = param1.readString();
         this.var_2436 = param1.readInteger();
         this.var_2434 = param1.readBoolean();
         this.var_715 = param1.readInteger();
         this.var_1417 = param1.readInteger();
         this.var_2435 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_791.push(_loc4_);
            _loc3_++;
         }
         this.var_2438 = new RoomThumbnailData(param1);
         this.var_2437 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_791 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_337;
      }
      
      public function get event() : Boolean
      {
         return this.var_772;
      }
      
      public function get roomName() : String
      {
         return this.var_805;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2439;
      }
      
      public function get userCount() : int
      {
         return this.var_2278;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2440;
      }
      
      public function get description() : String
      {
         return this.var_1519;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2436;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2434;
      }
      
      public function get score() : int
      {
         return this.var_715;
      }
      
      public function get categoryId() : int
      {
         return this.var_1417;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2435;
      }
      
      public function get tags() : Array
      {
         return this.var_791;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2438;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2437;
      }
   }
}
