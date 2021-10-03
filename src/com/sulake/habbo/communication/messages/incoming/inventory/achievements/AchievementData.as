package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1284:int;
      
      private var var_279:String;
      
      private var var_2422:int;
      
      private var var_2141:int;
      
      private var var_1566:int;
      
      private var var_2421:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1284 = param1.readInteger();
         this.var_279 = param1.readString();
         this.var_2422 = param1.readInteger();
         this.var_2141 = param1.readInteger();
         this.var_1566 = param1.readInteger();
         this.var_2421 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_279;
      }
      
      public function get level() : int
      {
         return this.var_1284;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2422;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2141;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1566;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2421;
      }
   }
}
