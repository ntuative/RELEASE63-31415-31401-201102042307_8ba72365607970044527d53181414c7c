package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2529:Boolean = false;
      
      private var var_2528:int = 0;
      
      private var var_2527:int = 0;
      
      private var var_2375:int = 0;
      
      private var var_2373:int = 0;
      
      private var var_171:Number = 0;
      
      private var var_170:Number = 0;
      
      private var var_248:String = "";
      
      private var _type:int = 0;
      
      private var var_2793:String = "";
      
      private var var_1295:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_181:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2529 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_181 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2529;
      }
      
      public function get wallX() : Number
      {
         return this.var_2528;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_2528 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2527;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_2527 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2375;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_2375 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2373;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_2373 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_171 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_170;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_170 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_248;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_248 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_181)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_181)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_181)
         {
            this._data = param1;
         }
      }
   }
}
