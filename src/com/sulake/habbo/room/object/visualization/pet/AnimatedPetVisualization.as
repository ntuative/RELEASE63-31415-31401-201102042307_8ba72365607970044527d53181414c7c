package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.visualization.furniture.AnimatedFurnitureVisualization;
   import com.sulake.habbo.room.object.visualization.furniture.FurnitureVisualizationData;
   import com.sulake.habbo.room.object.visualization.furniture.data.AnimationData;
   import com.sulake.habbo.room.object.visualization.furniture.data.AnimationFrame;
   import com.sulake.habbo.room.object.visualization.furniture.data.AnimationStateData;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   
   public class AnimatedPetVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_592:int = 1;
      
      private static const const_934:int = 1000;
      
      private static const const_1290:String = "pet_experience_bubble_png";
      
      private static const const_1292:int = 0;
      
      private static const const_1291:int = 1;
      
      private static const ANIMATION_INDEX_COUNT:int = 2;
       
      
      private var var_262:String = "";
      
      private var _isSleeping:Boolean = false;
      
      private var var_1438:Boolean = false;
      
      private var var_1185:Boolean = false;
      
      private var var_1881:Boolean = false;
      
      private var var_1435:String = "";
      
      private var var_1868:Number = NaN;
      
      private var _experienceData:ExperienceData;
      
      private var var_1386:int = 0;
      
      private var var_2019:int = 0;
      
      private var var_365:AnimatedPetVisualizationData = null;
      
      private var var_2504:String = "";
      
      private var var_1769:int = -1;
      
      private var var_112:Array;
      
      private var var_1696:Boolean = false;
      
      public function AnimatedPetVisualization()
      {
         this.var_112 = [];
         super();
         while(this.var_112.length < ANIMATION_INDEX_COUNT)
         {
            this.var_112.push(new AnimationStateData());
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         super.dispose();
         if(this.var_112 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_112.length)
            {
               _loc2_ = this.var_112[_loc1_] as AnimationStateData;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            this.var_112 = null;
         }
         if(this._experienceData)
         {
            this._experienceData.dispose();
            this._experienceData = null;
         }
      }
      
      override protected function getAnimationId(param1:AnimationStateData) : int
      {
         return param1.animationId;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         var _loc3_:* = null;
         if(!(param1 is AnimatedPetVisualizationData))
         {
            return false;
         }
         this.var_365 = param1 as AnimatedPetVisualizationData;
         var _loc2_:* = null;
         if(this.var_365.commonAssets != null)
         {
            _loc3_ = this.var_365.commonAssets.getAssetByName(const_1290) as BitmapDataAsset;
            if(_loc3_ != null)
            {
               _loc2_ = (_loc3_.content as BitmapData).clone();
               this._experienceData = new ExperienceData(_loc2_);
            }
         }
         if(super.initialize(param1))
         {
            return true;
         }
         return false;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         super.update(param1,param2,param3);
         this.updateExperienceBubble(param2);
      }
      
      override protected function updateModel(param1:Number) : Boolean
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
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
         if(_loc3_.getUpdateID() != var_162)
         {
            _loc4_ = _loc3_.getString(RoomObjectVariableEnum.const_393);
            _loc5_ = _loc3_.getString(RoomObjectVariableEnum.const_262);
            this.validateActions(_loc4_,_loc5_);
            this._isSleeping = _loc3_.getNumber(RoomObjectVariableEnum.const_355) > 0;
            this.var_1868 = _loc3_.getNumber(RoomObjectVariableEnum.const_282);
            this.var_1386 = _loc3_.getNumber(RoomObjectVariableEnum.const_718);
            this.var_2019 = _loc3_.getNumber(RoomObjectVariableEnum.const_862);
            _loc6_ = _loc3_.getNumber(RoomObjectVariableEnum.PET_PALETTE_INDEX);
            if(_loc6_ != this.var_1769)
            {
               this.var_1769 = _loc6_;
               this.var_2504 = this.var_1769.toString();
            }
            var_162 = _loc3_.getUpdateID();
            return true;
         }
         return false;
      }
      
      private function updateExperienceBubble(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(this._experienceData != null)
         {
            this._experienceData.alpha = 0;
            if(this.var_1386 > 0)
            {
               _loc2_ = param1 - this.var_1386;
               if(_loc2_ < const_934)
               {
                  this._experienceData.alpha = int(Math.sin(_loc2_ / const_934 * 0) * 255);
                  this._experienceData.setExperience(this.var_2019);
               }
               else
               {
                  this.var_1386 = 0;
               }
               _loc3_ = getSprite(spriteCount - 1);
               if(_loc3_ != null)
               {
                  if(this._experienceData.alpha > 0)
                  {
                     _loc3_.asset = this._experienceData.image;
                     _loc3_.offsetX = -20;
                     _loc3_.offsetY = -80;
                     _loc3_.alpha = this._experienceData.alpha;
                     _loc3_.visible = true;
                  }
                  else
                  {
                     _loc3_.asset = null;
                     _loc3_.visible = false;
                  }
               }
            }
         }
      }
      
      private function validateActions(param1:String, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param1 != this.var_262)
         {
            this.var_262 = param1;
            _loc3_ = this.var_365.getAnimationForPosture(var_186,param1);
            this.setAnimationForIndex(const_1292,_loc3_);
         }
         if(param2 != this.var_1435)
         {
            this.var_1435 = param2;
            _loc3_ = this.var_365.getAnimationForGesture(var_186,param2);
            this.setAnimationForIndex(const_1291,_loc3_);
         }
      }
      
      override protected function getAdditionalSpriteCount() : int
      {
         return super.getAdditionalSpriteCount() + const_592;
      }
      
      override protected function setAnimation(param1:int) : void
      {
      }
      
      private function getAnimationStateData(param1:int) : AnimationStateData
      {
         var _loc2_:* = null;
         if(param1 >= 0 && param1 < this.var_112.length)
         {
            return this.var_112[param1];
         }
         return null;
      }
      
      private function setAnimationForIndex(param1:int, param2:int) : void
      {
         var _loc3_:AnimationStateData = this.getAnimationStateData(param1);
         if(_loc3_ != null)
         {
            if(setSubAnimation(_loc3_,param2))
            {
               this.var_1696 = false;
            }
         }
      }
      
      override protected function resetAllAnimationFrames() : void
      {
         var _loc2_:* = null;
         var _loc1_:int = this.var_112.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.var_112[_loc1_];
            if(_loc2_ != null)
            {
               _loc2_.setLayerCount(layerCount);
            }
            _loc1_--;
         }
      }
      
      override protected function updateAnimations(param1:Number) : Array
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         if(this.var_1696)
         {
            return null;
         }
         var _loc2_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.var_112.length)
         {
            _loc6_ = this.var_112[_loc5_];
            if(_loc6_ != null)
            {
               if(!_loc6_.animationOver)
               {
                  _loc7_ = updateFramesForAnimation(_loc6_,param1);
                  if(_loc3_ == null || _loc3_.length == 0)
                  {
                     _loc3_ = _loc7_;
                  }
                  else
                  {
                     if(_loc4_ == null)
                     {
                        _loc4_ = [];
                        _loc9_ = 0;
                        while(_loc9_ < layerCount)
                        {
                           _loc4_.push(false);
                           _loc9_++;
                        }
                        for each(_loc8_ in _loc3_)
                        {
                           _loc4_[_loc8_] = true;
                        }
                        _loc3_ = [];
                     }
                     for each(_loc8_ in _loc7_)
                     {
                        _loc4_[_loc8_] = true;
                     }
                  }
                  if(!_loc6_.animationOver)
                  {
                     _loc2_ = false;
                  }
                  else if(AnimationData.isTransitionFromAnimation(_loc6_.animationId) || AnimationData.isTransitionToAnimation(_loc6_.animationId))
                  {
                     this.setAnimationForIndex(_loc5_,_loc6_.animationAfterTransitionId);
                     _loc2_ = false;
                  }
               }
            }
            _loc5_++;
         }
         if(_loc4_ != null)
         {
            _loc3_ = null;
            _loc10_ = 0;
            while(_loc10_ < layerCount)
            {
               if(_loc4_[_loc10_])
               {
                  if(_loc3_ == null)
                  {
                     _loc3_ = [_loc10_];
                  }
                  else
                  {
                     _loc3_.push(_loc10_);
                  }
               }
               _loc10_++;
            }
         }
         this.var_1696 = _loc2_;
         return _loc3_;
      }
      
      override protected function getFrameNumber(param1:int, param2:int) : int
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc3_:int = this.var_112.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.var_112[_loc3_];
            if(_loc4_ != null)
            {
               _loc5_ = _loc4_.getFrame(param2);
               if(_loc5_ != null)
               {
                  return _loc5_.id;
               }
            }
            _loc3_--;
         }
         return super.getFrameNumber(param1,param2);
      }
      
      override protected function getSpriteXOffset(param1:int, param2:int, param3:int) : int
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc4_:int = super.getSpriteXOffset(param1,param2,param3);
         var _loc5_:int = this.var_112.length - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = this.var_112[_loc5_];
            if(_loc6_ != null)
            {
               _loc7_ = _loc6_.getFrame(param3);
               if(_loc7_ != null)
               {
                  _loc4_ += _loc7_.x;
               }
            }
            _loc5_--;
         }
         return _loc4_;
      }
      
      override protected function getSpriteYOffset(param1:int, param2:int, param3:int) : int
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc4_:int = super.getSpriteYOffset(param1,param2,param3);
         var _loc5_:int = this.var_112.length - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = this.var_112[_loc5_];
            if(_loc6_ != null)
            {
               _loc7_ = _loc6_.getFrame(param3);
               if(_loc7_ != null)
               {
                  _loc4_ += _loc7_.y;
               }
            }
            _loc5_--;
         }
         return _loc4_;
      }
      
      override protected function getAsset(param1:String) : IGraphicAsset
      {
         var _loc2_:* = null;
         if(assetCollection != null)
         {
            _loc2_ = assetCollection.getAssetWithPalette(param1,this.var_2504);
            if(_loc2_ == null)
            {
            }
            return _loc2_;
         }
         return null;
      }
      
      override protected function getSpriteAssetName(param1:int, param2:int) : String
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc3_:int = spriteCount;
         if(param2 < _loc3_ - const_592)
         {
            _loc4_ = _data.getSize(param1);
            if(param2 < _loc3_ - (1 + const_592))
            {
               if(_data == null || param2 >= FurnitureVisualizationData.const_557.length)
               {
                  return null;
               }
               _loc5_ = FurnitureVisualizationData.const_557[param2];
               if(_loc4_ == 1)
               {
                  return _type + "_icon_" + _loc5_;
               }
               return _type + "_" + _loc4_ + "_" + _loc5_ + "_" + _direction + "_" + this.getFrameNumber(_loc4_,param2);
            }
            return _type + "_" + _loc4_ + "_sd_" + _direction + "_0";
         }
         return null;
      }
   }
}
