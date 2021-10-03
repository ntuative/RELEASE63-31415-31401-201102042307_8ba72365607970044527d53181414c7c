package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_910:int = 3;
       
      
      private var var_2113:int = -1;
      
      private var var_2114:int = -2;
      
      private var var_317:Vector3d = null;
      
      private var var_378:Vector3d = null;
      
      private var var_2109:Boolean = false;
      
      private var var_2111:Boolean = false;
      
      private var var_2115:Boolean = false;
      
      private var var_2110:Boolean = false;
      
      private var var_2107:int = 0;
      
      private var var_2106:int = 0;
      
      private var var_2108:int = 0;
      
      private var var_2112:int = 0;
      
      private var var_1268:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_378;
      }
      
      public function get targetId() : int
      {
         return this.var_2113;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2114;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2109;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2111;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2115;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2110;
      }
      
      public function get screenWd() : int
      {
         return this.var_2107;
      }
      
      public function get screenHt() : int
      {
         return this.var_2106;
      }
      
      public function get roomWd() : int
      {
         return this.var_2108;
      }
      
      public function get roomHt() : int
      {
         return this.var_2112;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2113 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2114 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2109 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2111 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2115 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2110 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2107 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2106 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2108 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2112 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_317 == null)
         {
            this.var_317 = new Vector3d();
         }
         if(this.var_317.x != param1.x || this.var_317.y != param1.y || this.var_317.z != param1.z)
         {
            this.var_317.assign(param1);
            this.var_1268 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_317 = null;
         this.var_378 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_378 != null)
         {
            return;
         }
         this.var_378 = new Vector3d();
         this.var_378.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_317 != null && this.var_378 != null)
         {
            ++this.var_1268;
            _loc4_ = Vector3d.dif(this.var_317,this.var_378);
            if(_loc4_.length <= param2)
            {
               this.var_378 = this.var_317;
               this.var_317 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_910 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1268 <= const_910)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_378 = Vector3d.sum(this.var_378,_loc4_);
            }
         }
      }
   }
}
