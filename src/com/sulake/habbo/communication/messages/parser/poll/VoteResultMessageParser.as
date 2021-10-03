package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1080:String;
      
      private var var_1355:Array;
      
      private var var_1071:Array;
      
      private var var_1805:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1080;
      }
      
      public function get choices() : Array
      {
         return this.var_1355.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1071.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1805;
      }
      
      public function flush() : Boolean
      {
         this.var_1080 = "";
         this.var_1355 = [];
         this.var_1071 = [];
         this.var_1805 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1080 = param1.readString();
         this.var_1355 = [];
         this.var_1071 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1355.push(param1.readString());
            this.var_1071.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1805 = param1.readInteger();
         return true;
      }
   }
}
