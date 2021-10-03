package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_1680:int;
      
      private var var_1681:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return this.var_1680;
      }
      
      public function get answerText() : String
      {
         return this.var_1681;
      }
      
      public function flush() : Boolean
      {
         this.var_1680 = -1;
         this.var_1681 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1680 = param1.readInteger();
         this.var_1681 = param1.readString();
         return true;
      }
   }
}
