package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1874:int = 1;
      
      public static const const_1737:int = 2;
      
      public static const const_1921:int = 3;
      
      public static const const_1779:int = 4;
      
      public static const const_1541:int = 5;
      
      public static const const_1833:int = 6;
      
      public static const const_1540:int = 7;
      
      public static const const_1564:int = 8;
      
      public static const const_1748:int = 9;
      
      public static const const_1595:int = 10;
      
      public static const const_1350:int = 11;
      
      public static const const_1584:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1549:int;
      
      private var var_1407:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1549 = param1.readInteger();
         this.var_1407 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1549;
      }
      
      public function get info() : String
      {
         return this.var_1407;
      }
   }
}
