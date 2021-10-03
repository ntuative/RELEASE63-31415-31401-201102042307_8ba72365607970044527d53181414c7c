package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_170:Number = 0;
      
      private var var_248:int = 0;
      
      private var var_471:int = 0;
      
      private var var_581:int = 0;
      
      private var var_181:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_181 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_181)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_181)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_181)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_248;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_248 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_471;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_471 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_581;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_581 = param1;
         }
      }
   }
}
