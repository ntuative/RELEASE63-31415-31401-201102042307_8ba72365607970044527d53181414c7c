package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1547:IID;
      
      private var var_724:Boolean;
      
      private var var_1016:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1547 = param1;
         this.var_1016 = new Array();
         this.var_724 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1547;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_724;
      }
      
      public function get receivers() : Array
      {
         return this.var_1016;
      }
      
      public function dispose() : void
      {
         if(!this.var_724)
         {
            this.var_724 = true;
            this.var_1547 = null;
            while(this.var_1016.length > 0)
            {
               this.var_1016.pop();
            }
            this.var_1016 = null;
         }
      }
   }
}
