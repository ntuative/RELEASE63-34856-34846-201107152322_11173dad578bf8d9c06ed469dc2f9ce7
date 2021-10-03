package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1623:IID;
      
      private var var_2023:String;
      
      private var var_120:IUnknown;
      
      private var var_857:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1623 = param1;
         this.var_2023 = getQualifiedClassName(this.var_1623);
         this.var_120 = param2;
         this.var_857 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1623;
      }
      
      public function get iis() : String
      {
         return this.var_2023;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_120;
      }
      
      public function get references() : uint
      {
         return this.var_857;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_120 == null;
      }
      
      public function dispose() : void
      {
         this.var_1623 = null;
         this.var_2023 = null;
         this.var_120 = null;
         this.var_857 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_857;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_857) : uint(0);
      }
   }
}
