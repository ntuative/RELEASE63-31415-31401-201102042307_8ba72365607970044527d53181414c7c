package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_170:Number = 0;
      
      private var var_2611:Number = 0;
      
      private var var_2609:Number = 0;
      
      private var var_2612:Number = 0;
      
      private var var_2610:Number = 0;
      
      private var var_248:int = 0;
      
      private var var_2003:int = 0;
      
      private var var_309:Array;
      
      private var var_2613:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_309 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_171 = param3;
         this.var_170 = param4;
         this.var_2611 = param5;
         this.var_248 = param6;
         this.var_2003 = param7;
         this.var_2609 = param8;
         this.var_2612 = param9;
         this.var_2610 = param10;
         this.var_2613 = param11;
         this.var_309 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function get z() : Number
      {
         return this.var_170;
      }
      
      public function get localZ() : Number
      {
         return this.var_2611;
      }
      
      public function get targetX() : Number
      {
         return this.var_2609;
      }
      
      public function get targetY() : Number
      {
         return this.var_2612;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2610;
      }
      
      public function get dir() : int
      {
         return this.var_248;
      }
      
      public function get dirHead() : int
      {
         return this.var_2003;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2613;
      }
      
      public function get actions() : Array
      {
         return this.var_309.slice();
      }
   }
}
