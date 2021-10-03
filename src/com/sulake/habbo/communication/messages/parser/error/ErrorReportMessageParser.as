package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1549:int;
      
      private var var_1807:int;
      
      private var var_1806:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1807 = param1.readInteger();
         this.var_1549 = param1.readInteger();
         this.var_1806 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1549 = 0;
         this.var_1807 = 0;
         this.var_1806 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1549;
      }
      
      public function get messageId() : int
      {
         return this.var_1807;
      }
      
      public function get timestamp() : String
      {
         return this.var_1806;
      }
   }
}
