package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1671:int;
      
      private var var_1284:int;
      
      private var var_2016:int;
      
      private var var_2019:int;
      
      private var var_2011:int;
      
      private var _energy:int;
      
      private var var_2013:int;
      
      private var _nutrition:int;
      
      private var var_2018:int;
      
      private var var_2015:int;
      
      private var _ownerName:String;
      
      private var var_2280:int;
      
      private var var_467:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1671;
      }
      
      public function get level() : int
      {
         return this.var_1284;
      }
      
      public function get levelMax() : int
      {
         return this.var_2016;
      }
      
      public function get experience() : int
      {
         return this.var_2019;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2011;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2013;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2018;
      }
      
      public function get ownerId() : int
      {
         return this.var_2015;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2280;
      }
      
      public function get age() : int
      {
         return this.var_467;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1671 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1284 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2016 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2019 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2011 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2013 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2018 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2015 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2280 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_467 = param1;
      }
   }
}
