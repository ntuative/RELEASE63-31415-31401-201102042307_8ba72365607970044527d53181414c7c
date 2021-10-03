package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_555:String;
      
      private var var_917:String;
      
      private var var_2366:String;
      
      private var var_1766:String;
      
      private var var_2362:int;
      
      private var var_2365:String;
      
      private var var_2363:int;
      
      private var var_2364:int;
      
      private var _respectTotal:int;
      
      private var var_1103:int;
      
      private var var_709:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_555 = param1.readString();
         this.var_917 = param1.readString();
         this.var_2366 = param1.readString();
         this.var_1766 = param1.readString();
         this.var_2362 = param1.readInteger();
         this.var_2365 = param1.readString();
         this.var_2363 = param1.readInteger();
         this.var_2364 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_1103 = param1.readInteger();
         this.var_709 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_555;
      }
      
      public function get sex() : String
      {
         return this.var_917;
      }
      
      public function get customData() : String
      {
         return this.var_2366;
      }
      
      public function get realName() : String
      {
         return this.var_1766;
      }
      
      public function get tickets() : int
      {
         return this.var_2362;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2365;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2363;
      }
      
      public function get directMail() : int
      {
         return this.var_2364;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1103;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_709;
      }
   }
}
