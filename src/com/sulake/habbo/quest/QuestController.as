package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_51:HabboQuestEngine;
      
      private var var_563:QuestsList;
      
      private var var_469:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_400:QuestTracker;
      
      private var var_691:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_51 = param1;
         this.var_400 = new QuestTracker(this.var_51);
         this.var_563 = new QuestsList(this.var_51);
         this.var_469 = new QuestDetails(this.var_51);
         this._questCompleted = new QuestCompleted(this.var_51);
         this.var_691 = new NextQuestTimer(this.var_51);
      }
      
      public function onToolbarClick() : void
      {
         this.var_563.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_563.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_400.onQuest(param1);
         this.var_469.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_691.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_400.onQuestCompleted(param1);
         this.var_469.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_400.onQuestCancelled();
         this.var_469.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_691.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_400.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_563.onRoomExit();
         this.var_400.onRoomExit();
         this.var_469.onRoomExit();
         this.var_691.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_400.update(param1);
         this.var_691.update(param1);
         this.var_563.update(param1);
         this.var_469.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_51 = null;
         if(this.var_563)
         {
            this.var_563.dispose();
            this.var_563 = null;
         }
         if(this.var_400)
         {
            this.var_400.dispose();
            this.var_400 = null;
         }
         if(this.var_469)
         {
            this.var_469.dispose();
            this.var_469 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_691)
         {
            this.var_691.dispose();
            this.var_691 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_51 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_563;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_469;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_400;
      }
   }
}
