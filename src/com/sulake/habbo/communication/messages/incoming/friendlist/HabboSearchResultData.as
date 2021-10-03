package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2468:int;
      
      private var var_1911:String;
      
      private var var_2608:String;
      
      private var var_3028:Boolean;
      
      private var var_3026:Boolean;
      
      private var var_3029:int;
      
      private var var_2607:String;
      
      private var var_3027:String;
      
      private var var_1833:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2468 = param1.readInteger();
         this.var_1911 = param1.readString();
         this.var_2608 = param1.readString();
         this.var_3028 = param1.readBoolean();
         this.var_3026 = param1.readBoolean();
         param1.readString();
         this.var_3029 = param1.readInteger();
         this.var_2607 = param1.readString();
         this.var_3027 = param1.readString();
         this.var_1833 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2468;
      }
      
      public function get avatarName() : String
      {
         return this.var_1911;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2608;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_3028;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_3026;
      }
      
      public function get avatarGender() : int
      {
         return this.var_3029;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2607;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_3027;
      }
      
      public function get realName() : String
      {
         return this.var_1833;
      }
   }
}
