package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1049:int;
      
      private var var_2117:String;
      
      private var var_2118:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1049 = param1.readInteger();
         this.var_2117 = param1.readString();
         this.var_2118 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1049;
      }
      
      public function get requesterName() : String
      {
         return this.var_2117;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2118;
      }
   }
}
