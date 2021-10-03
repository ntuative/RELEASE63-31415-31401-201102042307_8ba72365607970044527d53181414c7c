package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_930:RoomObjectLocationCacheItem = null;
      
      private var var_198:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_930 = new RoomObjectLocationCacheItem(param1);
         this.var_198 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_930;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_198;
      }
      
      public function dispose() : void
      {
         if(this.var_930 != null)
         {
            this.var_930.dispose();
            this.var_930 = null;
         }
         if(this.var_198 != null)
         {
            this.var_198.dispose();
            this.var_198 = null;
         }
      }
   }
}
