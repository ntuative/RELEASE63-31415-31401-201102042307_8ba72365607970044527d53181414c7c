package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1520:Boolean;
      
      private var var_2066:int;
      
      private var var_400:Boolean;
      
      private var var_1006:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1520;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2066;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1006;
      }
      
      public function get owner() : Boolean
      {
         return this.var_400;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1006 != null)
         {
            this.var_1006.dispose();
            this.var_1006 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1520 = param1.readBoolean();
         if(this.var_1520)
         {
            this.var_2066 = param1.readInteger();
            this.var_400 = param1.readBoolean();
         }
         else
         {
            this.var_1006 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
