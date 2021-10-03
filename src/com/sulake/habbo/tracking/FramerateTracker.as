package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_2017:int;
      
      private var var_2893:int;
      
      private var var_777:int;
      
      private var var_570:Number;
      
      private var var_2891:Boolean;
      
      private var var_2892:int;
      
      private var var_2102:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_570);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2893 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2892 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2891 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_777;
         if(this.var_777 == 1)
         {
            this.var_570 = param1;
            this.var_2017 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_777);
            this.var_570 = this.var_570 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2891 && param3 - this.var_2017 >= this.var_2893)
         {
            this.var_777 = 0;
            if(this.var_2102 < this.var_2892)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_2102;
               this.var_2017 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
