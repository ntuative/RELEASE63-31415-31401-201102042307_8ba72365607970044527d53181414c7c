package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1095:int = 1;
      
      public static const const_695:int = 2;
      
      public static const const_795:int = 3;
      
      public static const const_1534:int = 4;
       
      
      private var _index:int;
      
      private var var_2517:String;
      
      private var var_2516:String;
      
      private var var_2513:Boolean;
      
      private var var_2515:String;
      
      private var var_946:String;
      
      private var var_2514:int;
      
      private var var_2278:int;
      
      private var _type:int;
      
      private var var_2244:String;
      
      private var var_918:GuestRoomData;
      
      private var var_919:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2517 = param1.readString();
         this.var_2516 = param1.readString();
         this.var_2513 = param1.readInteger() == 1;
         this.var_2515 = param1.readString();
         this.var_946 = param1.readString();
         this.var_2514 = param1.readInteger();
         this.var_2278 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1095)
         {
            this.var_2244 = param1.readString();
         }
         else if(this._type == const_795)
         {
            this.var_919 = new PublicRoomData(param1);
         }
         else if(this._type == const_695)
         {
            this.var_918 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_918 != null)
         {
            this.var_918.dispose();
            this.var_918 = null;
         }
         if(this.var_919 != null)
         {
            this.var_919.dispose();
            this.var_919 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2517;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2516;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2513;
      }
      
      public function get picText() : String
      {
         return this.var_2515;
      }
      
      public function get picRef() : String
      {
         return this.var_946;
      }
      
      public function get folderId() : int
      {
         return this.var_2514;
      }
      
      public function get tag() : String
      {
         return this.var_2244;
      }
      
      public function get userCount() : int
      {
         return this.var_2278;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_918;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_919;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1095)
         {
            return 0;
         }
         if(this.type == const_695)
         {
            return this.var_918.maxUserCount;
         }
         if(this.type == const_795)
         {
            return this.var_919.maxUsers;
         }
         return 0;
      }
   }
}
