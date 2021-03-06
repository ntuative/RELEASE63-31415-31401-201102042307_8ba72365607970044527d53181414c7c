package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1284:int;
      
      private var var_1808:int;
      
      private var var_2141:int;
      
      private var var_1566:int;
      
      private var var_1283:int;
      
      private var var_2236:String = "";
      
      private var var_2238:String = "";
      
      private var var_2237:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1284 = param1.readInteger();
         this.var_2236 = param1.readString();
         this.var_1808 = param1.readInteger();
         this.var_2141 = param1.readInteger();
         this.var_1566 = param1.readInteger();
         this.var_1283 = param1.readInteger();
         this.var_2237 = param1.readInteger();
         this.var_2238 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1284;
      }
      
      public function get points() : int
      {
         return this.var_1808;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2141;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1566;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1283;
      }
      
      public function get badgeID() : String
      {
         return this.var_2236;
      }
      
      public function get achievementID() : int
      {
         return this.var_2237;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2238;
      }
   }
}
