package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1778:int = 1;
      
      public static const const_1633:int = 2;
       
      
      private var var_936:String;
      
      private var var_2707:int;
      
      private var var_2708:int;
      
      private var var_2706:int;
      
      private var var_2704:int;
      
      private var var_2703:Boolean;
      
      private var var_2158:Boolean;
      
      private var var_2159:int;
      
      private var var_2161:int;
      
      private var var_2705:Boolean;
      
      private var var_2709:int;
      
      private var var_2702:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_936 = param1.readString();
         this.var_2707 = param1.readInteger();
         this.var_2708 = param1.readInteger();
         this.var_2706 = param1.readInteger();
         this.var_2704 = param1.readInteger();
         this.var_2703 = param1.readBoolean();
         this.var_2158 = param1.readBoolean();
         this.var_2159 = param1.readInteger();
         this.var_2161 = param1.readInteger();
         this.var_2705 = param1.readBoolean();
         this.var_2709 = param1.readInteger();
         this.var_2702 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_936;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2707;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2708;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2706;
      }
      
      public function get responseType() : int
      {
         return this.var_2704;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2703;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2158;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2159;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2161;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2705;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2709;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2702;
      }
   }
}
