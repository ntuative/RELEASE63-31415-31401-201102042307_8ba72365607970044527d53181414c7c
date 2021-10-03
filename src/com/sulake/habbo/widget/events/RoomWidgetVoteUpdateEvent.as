package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_124:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_137:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1080:String;
      
      private var var_1355:Array;
      
      private var var_1071:Array;
      
      private var var_1805:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1080 = param2;
         this.var_1355 = param3;
         this.var_1071 = param4;
         if(this.var_1071 == null)
         {
            this.var_1071 = [];
         }
         this.var_1805 = param5;
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
   }
}
