package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2368:int = 0;
      
      private var var_1463:String = "";
      
      private var var_1911:String = "";
      
      private var var_2572:String = "";
      
      private var var_2573:String = "";
      
      private var var_1815:int = 0;
      
      private var var_2571:int = 0;
      
      private var var_2570:int = 0;
      
      private var var_1465:int = 0;
      
      private var var_2574:int = 0;
      
      private var var_1462:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2368 = param1;
         this.var_1463 = param2;
         this.var_1911 = param3;
         this.var_2572 = param4;
         this.var_2573 = param5;
         if(param6)
         {
            this.var_1815 = 1;
         }
         else
         {
            this.var_1815 = 0;
         }
         this.var_2571 = param7;
         this.var_2570 = param8;
         this.var_1465 = param9;
         this.var_2574 = param10;
         this.var_1462 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2368,this.var_1463,this.var_1911,this.var_2572,this.var_2573,this.var_1815,this.var_2571,this.var_2570,this.var_1465,this.var_2574,this.var_1462];
      }
   }
}
