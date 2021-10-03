package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2010:Boolean;
      
      private var var_2009:int;
      
      private var var_1490:Array;
      
      private var var_682:Array;
      
      private var var_683:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2010;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2009;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1490;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_682;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_683;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1490 = [];
         this.var_682 = [];
         this.var_683 = [];
         this.var_2010 = param1.readBoolean();
         this.var_2009 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1490.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_682.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_683.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
