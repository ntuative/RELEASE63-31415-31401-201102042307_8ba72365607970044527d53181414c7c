package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_759:TileHeightMap = null;
      
      private var var_1182:LegacyWallGeometry = null;
      
      private var var_1183:RoomCamera = null;
      
      private var var_761:SelectedRoomObjectData = null;
      
      private var var_760:SelectedRoomObjectData = null;
      
      private var var_2641:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1182 = new LegacyWallGeometry();
         this.var_1183 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_759;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_759 != null)
         {
            this.var_759.dispose();
         }
         this.var_759 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1182;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1183;
      }
      
      public function get worldType() : String
      {
         return this.var_2641;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2641 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_761;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_761 != null)
         {
            this.var_761.dispose();
         }
         this.var_761 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_760;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_760 != null)
         {
            this.var_760.dispose();
         }
         this.var_760 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_759 != null)
         {
            this.var_759.dispose();
            this.var_759 = null;
         }
         if(this.var_1182 != null)
         {
            this.var_1182.dispose();
            this.var_1182 = null;
         }
         if(this.var_1183 != null)
         {
            this.var_1183.dispose();
            this.var_1183 = null;
         }
         if(this.var_761 != null)
         {
            this.var_761.dispose();
            this.var_761 = null;
         }
         if(this.var_760 != null)
         {
            this.var_760.dispose();
            this.var_760 = null;
         }
      }
   }
}
