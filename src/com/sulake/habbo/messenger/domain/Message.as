package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_866:int = 1;
      
      public static const const_751:int = 2;
      
      public static const const_879:int = 3;
      
      public static const const_1147:int = 4;
      
      public static const const_870:int = 5;
      
      public static const const_1148:int = 6;
       
      
      private var _type:int;
      
      private var var_1041:int;
      
      private var var_2104:String;
      
      private var var_2105:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1041 = param2;
         this.var_2104 = param3;
         this.var_2105 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2104;
      }
      
      public function get time() : String
      {
         return this.var_2105;
      }
      
      public function get senderId() : int
      {
         return this.var_1041;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
