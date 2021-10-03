package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_2086:IID;
      
      private var var_1155:Boolean;
      
      private var var_1332:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_2086 = param1;
         this.var_1332 = new Array();
         this.var_1155 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_2086;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1155;
      }
      
      public function get receivers() : Array
      {
         return this.var_1332;
      }
      
      public function dispose() : void
      {
         if(!this.var_1155)
         {
            this.var_1155 = true;
            this.var_2086 = null;
            while(this.var_1332.length > 0)
            {
               this.var_1332.pop();
            }
            this.var_1332 = null;
         }
      }
   }
}
