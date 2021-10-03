package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_769:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1139:String = "inventory_effects";
      
      public static const const_1072:String = "inventory_badges";
      
      public static const const_1419:String = "inventory_clothes";
      
      public static const const_1374:String = "inventory_furniture";
       
      
      private var var_2239:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_769);
         this.var_2239 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2239;
      }
   }
}
