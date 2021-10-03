package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2742:int;
      
      private var var_2739:int;
      
      private var var_821:Boolean;
      
      private var var_2744:int;
      
      private var var_2743:int;
      
      private var var_2740:int;
      
      private var var_2741:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2742 = param1.readInteger();
         this.var_2739 = param1.readInteger();
         this.var_821 = param1.readBoolean();
         this.var_2744 = param1.readInteger();
         this.var_2743 = param1.readInteger();
         this.var_2740 = param1.readInteger();
         this.var_2741 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2742;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2739;
      }
      
      public function get online() : Boolean
      {
         return this.var_821;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2744;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2743;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2740;
      }
      
      public function get banCount() : int
      {
         return this.var_2741;
      }
   }
}
