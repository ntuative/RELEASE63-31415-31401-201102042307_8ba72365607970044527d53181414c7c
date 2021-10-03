package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1215:int = 80;
       
      
      private var var_442:Map;
      
      private var var_805:String = "";
      
      private var var_1259:Array;
      
      public function UserRegistry()
      {
         this.var_442 = new Map();
         this.var_1259 = new Array();
         super();
      }
      
      public function getRegistry() : Map
      {
         return this.var_442;
      }
      
      public function registerRoom(param1:String) : void
      {
         this.var_805 = param1;
         if(this.var_805 != "")
         {
            this.addRoomNameForMissing();
         }
      }
      
      public function unregisterRoom() : void
      {
         this.var_805 = "";
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(this.var_442.getValue(param1) != null)
         {
            this.var_442.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,this.var_805);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && this.var_805 == "")
         {
            this.var_1259.push(param1);
         }
         this.var_442.add(param1,_loc4_);
         this.purgeUserIndex();
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(this.var_442.length > const_1215)
         {
            _loc1_ = this.var_442.getKey(0);
            this.var_442.remove(_loc1_);
         }
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(this.var_1259.length > 0)
         {
            _loc1_ = this.var_442.getValue(this.var_1259.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = this.var_805;
            }
         }
      }
   }
}
