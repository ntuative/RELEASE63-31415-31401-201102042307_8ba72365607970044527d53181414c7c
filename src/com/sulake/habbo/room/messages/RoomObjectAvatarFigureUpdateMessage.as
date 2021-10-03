package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_555:String;
      
      private var var_2286:String;
      
      private var var_822:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_555 = param1;
         this.var_822 = param2;
         this.var_2286 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_555;
      }
      
      public function get race() : String
      {
         return this.var_2286;
      }
      
      public function get gender() : String
      {
         return this.var_822;
      }
   }
}
