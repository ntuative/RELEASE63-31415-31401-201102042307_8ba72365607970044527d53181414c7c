package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_679:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_724)
         {
            _structure = null;
            _assets = null;
            var_242 = null;
            var_267 = null;
            var_555 = null;
            var_523 = null;
            var_309 = null;
            if(!var_1217 && var_43)
            {
               var_43.dispose();
            }
            var_43 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_744 = null;
            var_724 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_679[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_679[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_377:
               switch(_loc3_)
               {
                  case AvatarAction.const_612:
                  case AvatarAction.const_467:
                  case AvatarAction.const_366:
                  case AvatarAction.const_820:
                  case AvatarAction.const_348:
                  case AvatarAction.const_672:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_312:
            case AvatarAction.const_678:
            case AvatarAction.const_257:
            case AvatarAction.const_845:
            case AvatarAction.const_830:
            case AvatarAction.const_780:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
