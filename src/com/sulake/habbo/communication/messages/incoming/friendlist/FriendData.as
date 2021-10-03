package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_822:int;
      
      private var var_754:Boolean;
      
      private var var_1615:Boolean;
      
      private var var_555:String;
      
      private var var_1417:int;
      
      private var var_1768:String;
      
      private var var_1767:String;
      
      private var var_1766:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_822 = param1.readInteger();
         this.var_754 = param1.readBoolean();
         this.var_1615 = param1.readBoolean();
         this.var_555 = param1.readString();
         this.var_1417 = param1.readInteger();
         this.var_1768 = param1.readString();
         this.var_1767 = param1.readString();
         this.var_1766 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_822;
      }
      
      public function get online() : Boolean
      {
         return this.var_754;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1615;
      }
      
      public function get figure() : String
      {
         return this.var_555;
      }
      
      public function get categoryId() : int
      {
         return this.var_1417;
      }
      
      public function get motto() : String
      {
         return this.var_1768;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1767;
      }
      
      public function get realName() : String
      {
         return this.var_1766;
      }
   }
}
