package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1608:int;
      
      private var var_1849:Number;
      
      private var var_2471:Number;
      
      private var var_2472:int;
      
      private var var_2474:Number;
      
      private var var_2473:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1608 = param1;
         this.var_1849 = param2;
         this.var_2471 = param3;
         this.var_2474 = param4;
         this.var_2473 = param5;
         this.var_2472 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1608;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1849 < 0)
         {
            return 0;
         }
         return this.var_1849 + (getTimer() - this.var_2472) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2471;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2474;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2473;
      }
   }
}
