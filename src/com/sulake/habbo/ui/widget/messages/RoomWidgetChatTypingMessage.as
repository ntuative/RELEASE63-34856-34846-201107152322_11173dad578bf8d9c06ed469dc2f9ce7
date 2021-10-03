package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_953:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_656:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_953);
         this.var_656 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_656;
      }
   }
}
