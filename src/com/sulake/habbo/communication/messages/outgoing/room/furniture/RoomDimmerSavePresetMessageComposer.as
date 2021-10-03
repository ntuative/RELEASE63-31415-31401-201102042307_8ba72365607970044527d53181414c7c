package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2267:int;
      
      private var var_2269:int;
      
      private var var_2304:String;
      
      private var var_2306:int;
      
      private var var_2305:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2267 = param1;
         this.var_2269 = param2;
         this.var_2304 = param3;
         this.var_2306 = param4;
         this.var_2305 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2267,this.var_2269,this.var_2304,this.var_2306,int(this.var_2305)];
      }
      
      public function dispose() : void
      {
      }
   }
}
