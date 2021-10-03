package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_473:WallRasterizer;
      
      private var var_472:FloorRasterizer;
      
      private var var_708:WallAdRasterizer;
      
      private var var_474:LandscapeRasterizer;
      
      private var var_707:PlaneMaskManager;
      
      private var var_777:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_473 = new WallRasterizer();
         this.var_472 = new FloorRasterizer();
         this.var_708 = new WallAdRasterizer();
         this.var_474 = new LandscapeRasterizer();
         this.var_707 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_777;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_472;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_473;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_708;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_474;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_707;
      }
      
      public function dispose() : void
      {
         if(this.var_473 != null)
         {
            this.var_473.dispose();
            this.var_473 = null;
         }
         if(this.var_472 != null)
         {
            this.var_472.dispose();
            this.var_472 = null;
         }
         if(this.var_708 != null)
         {
            this.var_708.dispose();
            this.var_708 = null;
         }
         if(this.var_474 != null)
         {
            this.var_474.dispose();
            this.var_474 = null;
         }
         if(this.var_707 != null)
         {
            this.var_707.dispose();
            this.var_707 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_473 != null)
         {
            this.var_473.clearCache();
         }
         if(this.var_472 != null)
         {
            this.var_472.clearCache();
         }
         if(this.var_474 != null)
         {
            this.var_474.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_473.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_472.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_708.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_474.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_707.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_777)
         {
            return;
         }
         this.var_473.initializeAssetCollection(param1);
         this.var_472.initializeAssetCollection(param1);
         this.var_708.initializeAssetCollection(param1);
         this.var_474.initializeAssetCollection(param1);
         this.var_707.initializeAssetCollection(param1);
         this.var_777 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
