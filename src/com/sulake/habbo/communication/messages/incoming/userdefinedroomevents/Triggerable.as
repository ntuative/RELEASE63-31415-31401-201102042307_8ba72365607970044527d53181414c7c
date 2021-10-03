package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class Triggerable
   {
       
      
      private var var_2477:int;
      
      private var var_1752:Array;
      
      private var _id:int;
      
      private var var_2478:String;
      
      private var var_1373:Array;
      
      private var var_2479:int;
      
      public function Triggerable(param1:IMessageDataWrapper)
      {
         var _loc5_:int = 0;
         this.var_1752 = new Array();
         this.var_1373 = new Array();
         super();
         this.var_2477 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc5_ = param1.readInteger();
            this.var_1752.push(_loc5_);
            _loc3_++;
         }
         this.var_2479 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2478 = param1.readString();
         var _loc4_:int = param1.readInteger();
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            this.var_1373.push(param1.readInteger());
            _loc3_++;
         }
      }
      
      public function get furniLimit() : int
      {
         return this.var_2477;
      }
      
      public function get stuffIds() : Array
      {
         return this.var_1752;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get stringParam() : String
      {
         return this.var_2478;
      }
      
      public function get intParams() : Array
      {
         return this.var_1373;
      }
      
      public function get code() : int
      {
         return 0;
      }
      
      public function get stuffTypeId() : int
      {
         return this.var_2479;
      }
      
      public function getBoolean(param1:int) : Boolean
      {
         return this.var_1373[param1] == 1;
      }
   }
}
