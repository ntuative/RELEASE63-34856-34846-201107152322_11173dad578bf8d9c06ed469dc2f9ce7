package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1275:int;
      
      private var var_2183:int;
      
      private var var_2601:int;
      
      private var var_2600:int;
      
      private var var_2852:int;
      
      private var var_2162:int;
      
      private var var_2851:String = "";
      
      private var var_2850:String = "";
      
      private var var_2853:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1275 = param1.readInteger();
         this.var_2162 = param1.readInteger();
         this.var_2851 = param1.readString();
         this.var_2183 = param1.readInteger();
         this.var_2601 = param1.readInteger();
         this.var_2600 = param1.readInteger();
         this.var_2852 = param1.readInteger();
         this.var_2853 = param1.readInteger();
         this.var_2850 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1275;
      }
      
      public function get points() : int
      {
         return this.var_2183;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2601;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2600;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2852;
      }
      
      public function get badgeId() : int
      {
         return this.var_2162;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2851;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2850;
      }
      
      public function get achievementID() : int
      {
         return this.var_2853;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
