package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_345:int = 1;
      
      public static const const_261:int = 2;
      
      public static const const_277:int = 3;
      
      public static const const_337:int = 4;
      
      public static const const_244:int = 5;
      
      public static const const_402:int = 1;
      
      public static const const_693:int = 2;
      
      public static const const_758:int = 3;
      
      public static const const_799:int = 4;
      
      public static const const_236:int = 5;
      
      public static const const_755:int = 6;
      
      public static const const_607:int = 7;
      
      public static const const_231:int = 8;
      
      public static const const_398:int = 9;
      
      public static const const_1747:int = 10;
      
      public static const const_759:int = 11;
      
      public static const const_443:int = 12;
       
      
      private var var_416:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_416 = new Array();
         this.var_416.push(new Tab(this._navigator,const_345,const_443,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_444));
         this.var_416.push(new Tab(this._navigator,const_261,const_402,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_444));
         this.var_416.push(new Tab(this._navigator,const_337,const_759,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_993));
         this.var_416.push(new Tab(this._navigator,const_277,const_236,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_444));
         this.var_416.push(new Tab(this._navigator,const_244,const_231,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_807));
         this.setSelectedTab(const_345);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_337;
      }
      
      public function get tabs() : Array
      {
         return this.var_416;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_416)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_416)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_416)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
