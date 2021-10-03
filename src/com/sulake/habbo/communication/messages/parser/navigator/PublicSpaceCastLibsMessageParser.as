package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PublicSpaceCastLibsMessageParser implements IMessageParser
   {
       
      
      private var var_1850:int;
      
      private var var_2324:String;
      
      private var var_2325:int;
      
      public function PublicSpaceCastLibsMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1850 = param1.readInteger();
         this.var_2324 = param1.readString();
         this.var_2325 = param1.readInteger();
         return true;
      }
      
      public function get nodeId() : int
      {
         return this.var_1850;
      }
      
      public function get castLibs() : String
      {
         return this.var_2324;
      }
      
      public function get unitPort() : int
      {
         return this.var_2325;
      }
   }
}
