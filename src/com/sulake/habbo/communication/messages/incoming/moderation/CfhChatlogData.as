package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1619:int;
      
      private var var_2241:int;
      
      private var var_1460:int;
      
      private var var_2240:int;
      
      private var var_102:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1619 = param1.readInteger();
         this.var_2241 = param1.readInteger();
         this.var_1460 = param1.readInteger();
         this.var_2240 = param1.readInteger();
         this.var_102 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1619);
      }
      
      public function get callId() : int
      {
         return this.var_1619;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2241;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1460;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2240;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_102;
      }
   }
}
