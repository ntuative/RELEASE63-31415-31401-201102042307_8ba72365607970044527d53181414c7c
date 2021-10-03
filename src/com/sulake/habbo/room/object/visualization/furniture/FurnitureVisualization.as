package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.visualization.furniture.data.ColorData;
   import com.sulake.habbo.room.object.visualization.furniture.data.LayerData;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class FurnitureVisualization extends RoomObjectSpriteVisualization
   {
      
      protected static const const_1644:Number = Math.sqrt(0.5);
       
      
      protected var _direction:int;
      
      protected var var_2733:Number = NaN;
      
      protected var var_2734:int = -1;
      
      protected var _alphaMultiplier:Number = 1.0;
      
      protected var var_1219:String = null;
      
      protected var _data:FurnitureVisualizationData = null;
      
      protected var _type:String = "";
      
      private var var_891:Array;
      
      private var var_890:Array;
      
      private var var_2393:Number = 0.0;
      
      private var var_2394:int = -1;
      
      private var var_718:Array;
      
      private var var_721:Array;
      
      private var var_720:Array;
      
      private var var_719:Array;
      
      private var var_722:Array;
      
      private var var_716:Array;
      
      private var var_723:Array;
      
      private var var_717:Array;
      
      private var var_1703:Boolean = true;
      
      private var var_588:int = 0;
      
      private var var_1704:int = -1;
      
      public function FurnitureVisualization()
      {
         this.var_891 = [];
         this.var_890 = [];
         this.var_718 = [];
         this.var_721 = [];
         this.var_720 = [];
         this.var_719 = [];
         this.var_722 = [];
         this.var_716 = [];
         this.var_723 = [];
         this.var_717 = [];
         super();
         this.reset();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this._data = null;
         this.var_891 = null;
         this.var_890 = null;
         this.var_718 = null;
         this.var_721 = null;
         this.var_720 = null;
         this.var_719 = null;
         this.var_722 = null;
         this.var_716 = null;
         this.var_723 = null;
         this.var_717 = null;
      }
      
      override protected function reset() : void
      {
         super.reset();
         this._direction = -1;
         this._data = null;
         this.var_891 = [];
         this.var_890 = [];
         this.var_718 = [];
         this.var_721 = [];
         this.var_720 = [];
         this.var_719 = [];
         this.var_722 = [];
         this.var_716 = [];
         this.var_723 = [];
         this.var_717 = [];
         this.createSprites(0);
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.reset();
         if(param1 == null || !(param1 is FurnitureVisualizationData))
         {
            return false;
         }
         this._data = param1 as FurnitureVisualizationData;
         this._type = this._data.getType();
         return true;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc4_:Boolean = false;
         var _loc5_:Number = param1.scale;
         if(this.updateObject(_loc5_,param1.direction.x))
         {
            _loc4_ = true;
         }
         if(this.updateModel(_loc5_))
         {
            _loc4_ = true;
         }
         var _loc6_:Array = this.updateAnimation(_loc5_);
         if(_loc4_ || _loc6_ != null && _loc6_.length > 0)
         {
            this.updateSprites(_loc5_,_loc4_,_loc6_);
            var_186 = _loc5_;
            increaseUpdateId();
         }
      }
      
      protected function updateSprites(param1:int, param2:Boolean, param3:Array) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.var_588 != spriteCount)
         {
            createSprites(this.var_588);
         }
         var _loc4_:Boolean = false;
         if(this.var_1219 != null)
         {
            _loc4_ = true;
         }
         if(param2)
         {
            _loc5_ = spriteCount - 1;
            while(_loc5_ >= 0)
            {
               this.updateSprite(param1,_loc5_,_loc4_);
               _loc5_--;
            }
         }
         else
         {
            for each(_loc6_ in param3)
            {
               this.updateSprite(param1,_loc6_,_loc4_);
            }
         }
         this.var_1703 = false;
      }
      
      private function updateSprite(param1:int, param2:int, param3:Boolean) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = NaN;
         var _loc8_:int = 0;
         var _loc4_:String = this.getSpriteAssetName(param1,param2);
         var _loc5_:IRoomObjectSprite = getSprite(param2);
         if(_loc5_ != null && _loc4_ != null)
         {
            _loc6_ = this.getAsset(_loc4_);
            if(_loc6_ != null && _loc6_.asset != null)
            {
               _loc5_.visible = true;
               _loc5_.asset = _loc6_.asset.content as BitmapData;
               _loc5_.flipH = _loc6_.flipH;
               _loc5_.flipV = _loc6_.flipV;
               _loc7_ = 0;
               if(param2 != this.var_1704)
               {
                  _loc5_.tag = this.getSpriteTag(param1,this._direction,param2);
                  _loc5_.alpha = this.getSpriteAlpha(param1,this._direction,param2);
                  _loc5_.color = this.getSpriteColor(param1,param2,this.var_2734);
                  _loc5_.offsetX = _loc6_.offsetX + this.getSpriteXOffset(param1,this._direction,param2);
                  _loc5_.offsetY = _loc6_.offsetY + this.getSpriteYOffset(param1,this._direction,param2);
                  _loc5_.capturesMouse = this.getSpriteMouseCapture(param1,this._direction,param2);
                  _loc5_.blendMode = this.getBlendMode(this.getSpriteInk(param1,this._direction,param2));
                  _loc7_ = Number(this.getSpriteZOffset(param1,this._direction,param2));
                  _loc7_ -= param2 * 0.001;
               }
               else
               {
                  _loc5_.offsetX = _loc6_.offsetX;
                  _loc5_.offsetY = _loc6_.offsetY;
                  _loc8_ = 48;
                  _loc8_ *= this._alphaMultiplier;
                  _loc5_.alpha = _loc8_;
                  _loc5_.capturesMouse = false;
                  _loc7_ = 1;
               }
               _loc7_ *= const_1644;
               _loc5_.relativeDepth = _loc7_;
               _loc5_.assetName = _loc6_.assetName;
               _loc5_.clickHandling = param3;
            }
            else
            {
               this.resetSprite(_loc5_);
            }
         }
         else if(_loc5_ != null)
         {
            this.resetSprite(_loc5_);
         }
      }
      
      private function resetSprite(param1:IRoomObjectSprite) : void
      {
         param1.asset = null;
         param1.assetName = "";
         param1.tag = "";
         param1.flipH = false;
         param1.flipV = false;
         param1.offsetX = 0;
         param1.offsetY = 0;
         param1.relativeDepth = 0;
         param1.clickHandling = false;
      }
      
      protected function getBlendMode(param1:int) : String
      {
         var _loc2_:String = "null";
         switch(param1)
         {
            case LayerData.const_1015:
               _loc2_ = "null";
               break;
            case LayerData.INK_DARKEN:
               _loc2_ = "null";
               break;
            case LayerData.const_973:
               _loc2_ = "null";
         }
         return _loc2_;
      }
      
      protected function updateObject(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc3_:IRoomObject = object;
         if(_loc3_ == null)
         {
            return false;
         }
         if(var_439 != _loc3_.getUpdateID() || param1 != var_186 || param2 != this.var_2733)
         {
            _loc4_ = _loc3_.getDirection().x - (param2 + 135);
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            if(this._data != null)
            {
               _loc5_ = this._data.getDirectionValue(param1,_loc4_);
               this._direction = _loc5_;
            }
            var_439 = _loc3_.getUpdateID();
            this.var_2733 = param2;
            this.updateAssetAndSpriteCache(param1,this._direction);
            return true;
         }
         return false;
      }
      
      protected function updateModel(param1:Number) : Boolean
      {
         var _loc4_:* = NaN;
         var _loc2_:IRoomObject = object;
         if(_loc2_ == null)
         {
            return false;
         }
         var _loc3_:IRoomObjectModel = _loc2_.getModel();
         if(_loc3_ == null)
         {
            return false;
         }
         if(var_162 != _loc3_.getUpdateID())
         {
            this.var_2734 = _loc3_.getNumber(RoomObjectVariableEnum.const_220);
            _loc4_ = Number(_loc3_.getNumber(RoomObjectVariableEnum.const_276));
            if(isNaN(_loc4_))
            {
               _loc4_ = 1;
            }
            if(_loc4_ != this._alphaMultiplier)
            {
               this._alphaMultiplier = _loc4_;
               this.var_1703 = true;
            }
            this.var_1219 = _loc3_.getString(RoomObjectVariableEnum.const_373);
            if(this.var_1219 == null || this.var_1219.indexOf("http") != 0)
            {
               this.var_1219 = null;
            }
            var_162 = _loc3_.getUpdateID();
            return true;
         }
         return false;
      }
      
      protected function updateAnimation(param1:Number) : Array
      {
         return null;
      }
      
      private function updateAssetAndSpriteCache(param1:Number, param2:int) : void
      {
         if(this.var_2394 != param2 || this.var_2393 != param1)
         {
            this.var_891 = [];
            this.var_890 = [];
            this.var_718 = [];
            this.var_721 = [];
            this.var_720 = [];
            this.var_719 = [];
            this.var_722 = [];
            this.var_716 = [];
            this.var_723 = [];
            this.var_717 = [];
            this.var_2394 = param2;
            this.var_2393 = param1;
            this.var_588 = this._data.getLayerCount(param1) + this.getAdditionalSpriteCount();
            this.var_1704 = this.var_588 - this.getAdditionalSpriteCount();
         }
      }
      
      protected function getAdditionalSpriteCount() : int
      {
         return 1;
      }
      
      protected function getFrameNumber(param1:int, param2:int) : int
      {
         return 0;
      }
      
      protected function getAsset(param1:String) : IGraphicAsset
      {
         var _loc2_:* = null;
         if(assetCollection != null)
         {
            return assetCollection.getAsset(param1);
         }
         return null;
      }
      
      protected function getSpriteAssetName(param1:int, param2:int) : String
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         if(this._data == null || param2 >= FurnitureVisualizationData.const_557.length)
         {
            return "";
         }
         var _loc3_:String = this.var_891[param2];
         var _loc4_:Boolean = this.var_890[param2];
         if(_loc3_ == null || _loc3_.length == 0)
         {
            _loc5_ = this.getSize(param1);
            _loc3_ = this._type;
            _loc6_ = "";
            if(param2 != this.var_1704)
            {
               _loc6_ = FurnitureVisualizationData.const_557[param2];
            }
            else
            {
               _loc6_ = "sd";
            }
            if(_loc5_ == 1)
            {
               _loc3_ += "_icon_" + _loc6_;
               _loc4_ = false;
            }
            else
            {
               _loc3_ += "_" + _loc5_ + "_" + _loc6_ + "_" + this._direction;
               _loc4_ = true;
            }
            this.var_891[param2] = _loc3_;
            this.var_890[param2] = _loc4_;
         }
         if(_loc4_)
         {
            _loc7_ = this.getFrameNumber(param1,param2);
            _loc3_ += "_" + _loc7_;
         }
         return _loc3_;
      }
      
      protected function getSpriteTag(param1:int, param2:int, param3:int) : String
      {
         if(this.var_718[param3] != null)
         {
            return this.var_718[param3];
         }
         if(this._data == null)
         {
            return "";
         }
         var _loc4_:String = this._data.getTag(param1,param2,param3);
         this.var_718[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteAlpha(param1:int, param2:int, param3:int) : int
      {
         if(this.var_721[param3] != null && !this.var_1703)
         {
            return this.var_721[param3];
         }
         if(this._data == null)
         {
            return LayerData.const_560;
         }
         var _loc4_:int = this._data.getAlpha(param1,param2,param3);
         _loc4_ *= this._alphaMultiplier;
         this.var_721[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteColor(param1:int, param2:int, param3:int) : int
      {
         if(this.var_720[param2] != null)
         {
            return this.var_720[param2];
         }
         if(this._data == null)
         {
            return ColorData.const_79;
         }
         var _loc4_:int = this._data.getColor(param1,param2,param3);
         this.var_720[param2] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteXOffset(param1:int, param2:int, param3:int) : int
      {
         if(this.var_719[param3] != null)
         {
            return this.var_719[param3];
         }
         if(this._data == null)
         {
            return LayerData.const_527;
         }
         var _loc4_:int = this._data.getXOffset(param1,param2,param3);
         this.var_719[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteYOffset(param1:int, param2:int, param3:int) : int
      {
         if(this.var_722[param3] != null)
         {
            return this.var_722[param3];
         }
         if(this._data == null)
         {
            return LayerData.const_495;
         }
         var _loc4_:int = this._data.getYOffset(param1,param2,param3);
         this.var_722[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteMouseCapture(param1:int, param2:int, param3:int) : Boolean
      {
         if(this.var_723[param3] != null)
         {
            return this.var_723[param3];
         }
         if(this._data == null)
         {
            return true;
         }
         var _loc4_:* = !this._data.getIgnoreMouse(param1,param2,param3);
         this.var_723[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteInk(param1:int, param2:int, param3:int) : int
      {
         if(this.var_717[param3] != null)
         {
            return this.var_717[param3];
         }
         if(this._data == null)
         {
            return LayerData.const_573;
         }
         var _loc4_:int = this._data.getInk(param1,param2,param3);
         this.var_717[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteZOffset(param1:int, param2:int, param3:int) : Number
      {
         if(this.var_716[param3] != null)
         {
            return this.var_716[param3];
         }
         if(this._data == null)
         {
            return LayerData.const_540;
         }
         var _loc4_:Number = this._data.getZOffset(param1,param2,param3);
         this.var_716[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSize(param1:int) : int
      {
         if(this._data != null)
         {
            return this._data.getSize(param1);
         }
         return param1;
      }
   }
}
