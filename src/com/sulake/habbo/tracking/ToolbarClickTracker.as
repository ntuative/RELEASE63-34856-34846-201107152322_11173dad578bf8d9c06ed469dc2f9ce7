package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1435:IHabboTracking;
      
      private var var_1868:Boolean = false;
      
      private var var_2296:int = 0;
      
      private var var_1734:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1435 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1435 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1868 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2296 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1868)
         {
            return;
         }
         ++this.var_1734;
         if(this.var_1734 <= this.var_2296)
         {
            this.var_1435.trackGoogle("toolbar",param1);
         }
      }
   }
}
