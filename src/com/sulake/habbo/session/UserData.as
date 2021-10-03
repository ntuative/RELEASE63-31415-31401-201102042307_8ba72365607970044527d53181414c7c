package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_917:String = "";
      
      private var var_555:String = "";
      
      private var var_2188:String = "";
      
      private var var_2189:int;
      
      private var var_2190:int = 0;
      
      private var var_2186:String = "";
      
      private var var_2185:int = 0;
      
      private var var_2187:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2189;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2189 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_917;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_917 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_555;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_555 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2188;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2188 = param1;
      }
      
      public function get method_1() : int
      {
         return this.var_2190;
      }
      
      public function set method_1(param1:int) : void
      {
         this.var_2190 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2186;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2186 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2185;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2185 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2187;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2187 = param1;
      }
   }
}
