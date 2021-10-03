package com.sulake.habbo.ui.widget.infostand
{
   import com.sulake.habbo.ui.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1275:int;
      
      private var var_2639:int;
      
      private var var_2370:int;
      
      private var var_2637:int;
      
      private var _energy:int;
      
      private var var_2638:int;
      
      private var _nutrition:int;
      
      private var var_2635:int;
      
      private var _petRespect:int;
      
      private var _name:String = "";
      
      private var var_1916:int = -1;
      
      private var _type:int;
      
      private var var_2576:int;
      
      private var var_48:BitmapData;
      
      private var var_2636:Boolean;
      
      private var var_2569:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2634:int;
      
      private var var_592:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : int
      {
         return this.var_1916;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get race() : int
      {
         return this.var_2576;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2636;
      }
      
      public function get ownerId() : int
      {
         return this.var_2569;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get age() : int
      {
         return this.var_592;
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
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2634;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         this._name = param1.name;
         this.var_1916 = param1.id;
         this._type = param1.petType;
         this.var_2576 = param1.petRace;
         this.var_48 = param1.image;
         this.var_2636 = param1.isOwnPet;
         this.var_2569 = param1.ownerId;
         this._ownerName = param1.ownerName;
         this._canOwnerBeKicked = param1.canOwnerBeKicked;
         this.var_1275 = param1.level;
         this.var_2639 = param1.levelMax;
         this.var_2370 = param1.experience;
         this.var_2637 = param1.experienceMax;
         this._energy = param1.energy;
         this.var_2638 = param1.energyMax;
         this._nutrition = param1.nutrition;
         this.var_2635 = param1.nutritionMax;
         this._petRespect = param1.petRespect;
         this.var_2634 = param1.roomIndex;
         this.var_592 = param1.age;
      }
   }
}
