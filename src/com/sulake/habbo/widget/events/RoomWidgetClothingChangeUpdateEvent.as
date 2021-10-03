package com.sulake.habbo.widget.events
{
   public class RoomWidgetClothingChangeUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_349:String = "RWCCUE_SHOW_GENDER_SELECTION";
      
      public static const const_1173:String = "RWCCUE_SHOW_CLOTHING_EDITOR";
      
      public static const const_344:String = "RWCCUE_HIDE_CLOTHING_EDITOR";
       
      
      private var _objectId:int = -1;
      
      private var var_2065:int = -1;
      
      private var _roomId:int = -1;
      
      private var _roomCategory:int = -1;
      
      public function RoomWidgetClothingChangeUpdateEvent(param1:String, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this._objectId = param2;
         this.var_2065 = param3;
         this._roomId = param4;
         this._roomCategory = param5;
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get objectCategory() : int
      {
         return this.var_2065;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
   }
}