package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2932:int;
      
      private var var_2931:int;
      
      private var var_2930:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2932 = param1;
         this.var_2931 = param2;
         this.var_2930 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2932,this.var_2931,this.var_2930];
      }
      
      public function dispose() : void
      {
      }
   }
}
