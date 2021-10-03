package com.sulake.habbo.avatar.actions
{
   public class ActiveActionData implements IActiveActionData
   {
       
      
      private var var_1612:String = "";
      
      private var _actionParameter:String = "";
      
      private var var_1053:IActionDefinition;
      
      private var var_2228:int = 0;
      
      private var var_2229:String;
      
      public function ActiveActionData(param1:String, param2:String = "", param3:int = 0)
      {
         super();
         this.var_1612 = param1;
         this._actionParameter = param2;
         this.var_2228 = param3;
      }
      
      public function get actionType() : String
      {
         return this.var_1612;
      }
      
      public function get actionParameter() : String
      {
         return this._actionParameter;
      }
      
      public function get definition() : IActionDefinition
      {
         return this.var_1053;
      }
      
      public function get id() : String
      {
         if(this.var_1053 == null)
         {
            return "";
         }
         return this.var_1053.id + "_" + this._actionParameter;
      }
      
      public function set actionParameter(param1:String) : void
      {
         this._actionParameter = param1;
      }
      
      public function set definition(param1:IActionDefinition) : void
      {
         this.var_1053 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1612 = null;
         this._actionParameter = null;
         this.var_1053 = null;
      }
      
      public function get startFrame() : int
      {
         return this.var_2228;
      }
      
      public function get overridingAction() : String
      {
         return this.var_2229;
      }
      
      public function set overridingAction(param1:String) : void
      {
         this.var_2229 = param1;
      }
   }
}
