package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2409:int;
      
      private var var_2410:int;
      
      private var var_2408:int;
      
      private var var_2411:String;
      
      private var var_1601:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2409 = param1.readInteger();
         this.var_2410 = param1.readInteger();
         this.var_2408 = param1.readInteger();
         this.var_2411 = param1.readString();
         this.var_1601 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2409;
      }
      
      public function get minute() : int
      {
         return this.var_2410;
      }
      
      public function get chatterId() : int
      {
         return this.var_2408;
      }
      
      public function get chatterName() : String
      {
         return this.var_2411;
      }
      
      public function get msg() : String
      {
         return this.var_1601;
      }
   }
}
