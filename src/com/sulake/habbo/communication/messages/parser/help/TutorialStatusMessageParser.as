package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1294:Boolean;
      
      private var var_1295:Boolean;
      
      private var var_1606:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1294;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1295;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1606;
      }
      
      public function flush() : Boolean
      {
         this.var_1294 = false;
         this.var_1295 = false;
         this.var_1606 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1294 = param1.readBoolean();
         this.var_1295 = param1.readBoolean();
         this.var_1606 = param1.readBoolean();
         return true;
      }
   }
}
