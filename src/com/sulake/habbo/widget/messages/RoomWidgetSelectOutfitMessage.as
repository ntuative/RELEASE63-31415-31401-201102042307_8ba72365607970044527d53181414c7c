package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_983:String = "select_outfit";
       
      
      private var var_2539:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_983);
         this.var_2539 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2539;
      }
   }
}
