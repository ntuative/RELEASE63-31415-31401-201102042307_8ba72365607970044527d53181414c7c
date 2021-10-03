package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1152:Boolean;
      
      private var var_1151:Boolean;
      
      private var var_1399:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1152;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1151;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1399;
      }
      
      public function flush() : Boolean
      {
         this.var_1152 = false;
         this.var_1151 = false;
         this.var_1399 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1152 = param1.readBoolean();
         this.var_1151 = param1.readBoolean();
         this.var_1399 = param1.readBoolean();
         return true;
      }
   }
}
