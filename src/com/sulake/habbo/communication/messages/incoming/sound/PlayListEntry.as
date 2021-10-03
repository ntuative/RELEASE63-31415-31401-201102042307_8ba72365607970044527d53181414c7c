package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2351:int;
      
      private var var_2563:int;
      
      private var var_2561:String;
      
      private var var_2560:String;
      
      private var var_2562:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2351 = param1;
         this.var_2563 = param2;
         this.var_2561 = param3;
         this.var_2560 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2351;
      }
      
      public function get length() : int
      {
         return this.var_2563;
      }
      
      public function get name() : String
      {
         return this.var_2561;
      }
      
      public function get creator() : String
      {
         return this.var_2560;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2562;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2562 = param1;
      }
   }
}
