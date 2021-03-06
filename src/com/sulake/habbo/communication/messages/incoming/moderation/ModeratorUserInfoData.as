package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2093:int;
      
      private var var_2094:int;
      
      private var var_754:Boolean;
      
      private var var_2091:int;
      
      private var var_2089:int;
      
      private var var_2090:int;
      
      private var var_2092:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2093 = param1.readInteger();
         this.var_2094 = param1.readInteger();
         this.var_754 = param1.readBoolean();
         this.var_2091 = param1.readInteger();
         this.var_2089 = param1.readInteger();
         this.var_2090 = param1.readInteger();
         this.var_2092 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2093;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2094;
      }
      
      public function get online() : Boolean
      {
         return this.var_754;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2091;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2089;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2090;
      }
      
      public function get banCount() : int
      {
         return this.var_2092;
      }
   }
}
