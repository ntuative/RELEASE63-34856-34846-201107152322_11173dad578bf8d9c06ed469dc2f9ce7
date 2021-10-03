package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1275:int;
      
      private var var_2162:String;
      
      private var var_1904:int;
      
      private var var_2601:int;
      
      private var var_2600:int;
      
      private var var_1906:int;
      
      private var var_1905:Boolean;
      
      private var _category:String;
      
      private var var_2599:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1275 = param1.readInteger();
         this.var_2162 = param1.readString();
         this.var_1904 = Math.max(1,param1.readInteger());
         this.var_2601 = param1.readInteger();
         this.var_2600 = param1.readInteger();
         this.var_1906 = param1.readInteger();
         this.var_1905 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2599 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_2162;
      }
      
      public function get level() : int
      {
         return this.var_1275;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1904;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2601;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2600;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1906;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1905;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2599;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1275 > 1 || this.var_1905;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1906 = this.var_1904;
      }
   }
}
