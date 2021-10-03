package com.sulake.habbo.friendbar.view
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.friendbar.HabboFriendBar;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDAvatarRenderManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import iid.IIDHabboWindowManager;
   
   public class AbstractView extends Component
   {
       
      
      protected var _windowManager:IHabboWindowManager;
      
      protected var var_603:IAvatarRenderManager;
      
      protected var var_750:IHabboLocalizationManager;
      
      protected var var_966:IHabboConfigurationManager;
      
      public function AbstractView(param1:HabboFriendBar, param2:uint, param3:IAssetLibrary)
      {
         super(param1,param2,param3);
         queueInterface(new IIDAvatarRenderManager(),this.onAvatarRendererAvailable);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerAvailable);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationAvailable);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationAvailable);
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this._windowManager)
            {
               if(!this._windowManager.disposed)
               {
                  this._windowManager.release(new IIDHabboWindowManager());
                  this._windowManager = null;
               }
            }
            if(this.var_603)
            {
               if(!this.var_603.disposed)
               {
                  this.var_603.release(new IIDAvatarRenderManager());
                  this.var_603 = null;
               }
            }
            if(this.var_750)
            {
               if(!this.var_750.disposed)
               {
                  this.var_750.release(new IIDHabboLocalizationManager());
                  this.var_750 = null;
               }
            }
            if(this.var_966)
            {
               if(!this.var_966.disposed)
               {
                  this.var_966.release(new IIDHabboConfigurationManager());
                  this.var_966 = null;
               }
            }
            super.dispose();
         }
      }
      
      private function onAvatarRendererAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_603 = param2 as IAvatarRenderManager;
      }
      
      private function onWindowManagerAvailable(param1:IID, param2:IUnknown) : void
      {
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function onLocalizationAvailable(param1:IID, param2:IHabboLocalizationManager) : void
      {
         this.var_750 = param2 as IHabboLocalizationManager;
      }
      
      private function onConfigurationAvailable(param1:IID, param2:IHabboConfigurationManager) : void
      {
         this.var_966 = param2 as IHabboConfigurationManager;
      }
   }
}
