package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_1322:int;
      
      private var var_2259:int;
      
      private var var_653:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1322 = param1.readInteger();
         this.var_2259 = param1.readInteger();
         this.var_653 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_653.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get prizeLevelId() : int
      {
         return this.var_1322;
      }
      
      public function get probabilityDenominator() : int
      {
         return this.var_2259;
      }
      
      public function get prizes() : Array
      {
         return this.var_653;
      }
   }
}
