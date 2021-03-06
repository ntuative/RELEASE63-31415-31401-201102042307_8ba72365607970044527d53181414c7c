package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class EnterOneWayDoorMessageComposer implements IMessageComposer
   {
       
      
      private var _objectId:int;
      
      public function EnterOneWayDoorMessageComposer(param1:int)
      {
         super();
         this._objectId = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this._objectId];
      }
   }
}
