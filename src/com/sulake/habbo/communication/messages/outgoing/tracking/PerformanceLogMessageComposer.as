package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2736:int = 0;
      
      private var var_1622:String = "";
      
      private var var_2019:String = "";
      
      private var var_2733:String = "";
      
      private var var_2732:String = "";
      
      private var var_1977:int = 0;
      
      private var var_2737:int = 0;
      
      private var var_2735:int = 0;
      
      private var var_1620:int = 0;
      
      private var var_2734:int = 0;
      
      private var var_1619:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2736 = param1;
         this.var_1622 = param2;
         this.var_2019 = param3;
         this.var_2733 = param4;
         this.var_2732 = param5;
         if(param6)
         {
            this.var_1977 = 1;
         }
         else
         {
            this.var_1977 = 0;
         }
         this.var_2737 = param7;
         this.var_2735 = param8;
         this.var_1620 = param9;
         this.var_2734 = param10;
         this.var_1619 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2736,this.var_1622,this.var_2019,this.var_2733,this.var_2732,this.var_1977,this.var_2737,this.var_2735,this.var_1620,this.var_2734,this.var_1619];
      }
   }
}
