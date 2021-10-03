package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_863:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_279:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_863);
         this.var_279 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_279;
      }
   }
}
