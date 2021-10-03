package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_902:IAssetLoader;
      
      private var var_1718:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1718 = param1;
         this.var_902 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1718;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_902;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_902 != null)
            {
               if(!this.var_902.disposed)
               {
                  this.var_902.dispose();
                  this.var_902 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
