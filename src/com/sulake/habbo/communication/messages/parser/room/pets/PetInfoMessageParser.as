package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1671:int;
      
      private var _name:String;
      
      private var var_1284:int;
      
      private var var_2386:int;
      
      private var var_2019:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_555:String;
      
      private var var_2387:int;
      
      private var var_2388:int;
      
      private var var_2389:int;
      
      private var var_2280:int;
      
      private var var_2015:int;
      
      private var _ownerName:String;
      
      private var var_467:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1671;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1284;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2386;
      }
      
      public function get experience() : int
      {
         return this.var_2019;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_555;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2387;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2388;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2389;
      }
      
      public function get respect() : int
      {
         return this.var_2280;
      }
      
      public function get ownerId() : int
      {
         return this.var_2015;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_467;
      }
      
      public function flush() : Boolean
      {
         this.var_1671 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1671 = param1.readInteger();
         this._name = param1.readString();
         this.var_1284 = param1.readInteger();
         this.var_2386 = param1.readInteger();
         this.var_2019 = param1.readInteger();
         this.var_2387 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2388 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2389 = param1.readInteger();
         this.var_555 = param1.readString();
         this.var_2280 = param1.readInteger();
         this.var_2015 = param1.readInteger();
         this.var_467 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
