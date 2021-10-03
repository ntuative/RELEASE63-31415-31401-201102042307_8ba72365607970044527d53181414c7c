package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_749:String = "RWUAM_WHISPER_USER";
      
      public static const const_628:String = "RWUAM_IGNORE_USER";
      
      public static const const_713:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_506:String = "RWUAM_KICK_USER";
      
      public static const const_798:String = "RWUAM_BAN_USER";
      
      public static const const_625:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_721:String = "RWUAM_RESPECT_USER";
      
      public static const const_790:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_766:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_657:String = "RWUAM_START_TRADING";
      
      public static const const_692:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_574:String = "RWUAM_KICK_BOT";
      
      public static const const_837:String = "RWUAM_REPORT";
      
      public static const const_468:String = "RWUAM_PICKUP_PET";
      
      public static const const_1453:String = "RWUAM_TRAIN_PET";
      
      public static const const_480:String = " RWUAM_RESPECT_PET";
      
      public static const const_395:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
