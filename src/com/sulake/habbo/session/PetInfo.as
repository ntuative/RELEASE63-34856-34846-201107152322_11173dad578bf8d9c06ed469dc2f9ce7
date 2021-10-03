package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1916:int;
      
      private var var_1275:int;
      
      private var var_2639:int;
      
      private var var_2370:int;
      
      private var var_2637:int;
      
      private var _energy:int;
      
      private var var_2638:int;
      
      private var _nutrition:int;
      
      private var var_2635:int;
      
      private var var_2569:int;
      
      private var _ownerName:String;
      
      private var var_2937:int;
      
      private var var_592:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1916;
      }
      
      public function get level() : int
      {
         return this.var_1275;
      }
      
      public function get levelMax() : int
      {
         return this.var_2639;
      }
      
      public function get experience() : int
      {
         return this.var_2370;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2637;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2638;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2635;
      }
      
      public function get ownerId() : int
      {
         return this.var_2569;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2937;
      }
      
      public function get age() : int
      {
         return this.var_592;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1916 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1275 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2639 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2370 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2637 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2638 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2635 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2569 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2937 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_592 = param1;
      }
   }
}
