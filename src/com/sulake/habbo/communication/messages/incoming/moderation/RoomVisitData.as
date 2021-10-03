package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1636:Boolean;
      
      private var _roomId:int;
      
      private var var_805:String;
      
      private var var_2307:int;
      
      private var var_2308:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1636 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_805 = param1.readString();
         this.var_2307 = param1.readInteger();
         this.var_2308 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1636;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_805;
      }
      
      public function get enterHour() : int
      {
         return this.var_2307;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2308;
      }
   }
}
