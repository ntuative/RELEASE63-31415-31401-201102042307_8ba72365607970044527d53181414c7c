package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_620:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_557:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_620);
         this.var_557 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_557;
      }
   }
}
