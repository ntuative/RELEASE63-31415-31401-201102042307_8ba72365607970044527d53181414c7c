package com.sulake.habbo.friendlist.events
{
   import flash.events.Event;
   
   public class FriendRequestEvent extends Event
   {
      
      public static const const_44:String = "FRE_ACCEPTED";
      
      public static const const_314:String = "FRE_DECLINED";
       
      
      private var var_1049:int;
      
      public function FriendRequestEvent(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.var_1049 = param2;
      }
      
      public function get requestId() : int
      {
         return this.var_1049;
      }
   }
}
