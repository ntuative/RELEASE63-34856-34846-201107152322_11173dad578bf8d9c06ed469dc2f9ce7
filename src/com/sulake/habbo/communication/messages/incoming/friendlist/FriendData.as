package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1067:int;
      
      private var var_821:Boolean;
      
      private var var_2085:Boolean;
      
      private var _figure:String;
      
      private var var_1569:int;
      
      private var var_1832:String;
      
      private var var_1831:String;
      
      private var var_1833:String;
      
      private var var_2746:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1067 = param1.readInteger();
         this.var_821 = param1.readBoolean();
         this.var_2085 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1569 = param1.readInteger();
         this.var_1832 = param1.readString();
         this.var_1831 = param1.readString();
         this.var_1833 = param1.readString();
         this.var_2746 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1067;
      }
      
      public function get online() : Boolean
      {
         return this.var_821;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_2085;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1569;
      }
      
      public function get motto() : String
      {
         return this.var_1832;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1831;
      }
      
      public function get realName() : String
      {
         return this.var_1833;
      }
      
      public function get facebookId() : String
      {
         return this.var_2746;
      }
   }
}
