package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_209:IWindowContainer;
      
      private var var_3101:int;
      
      private var var_425:RoomEventViewCtrl;
      
      private var var_424:Timer;
      
      private var var_165:RoomSettingsCtrl;
      
      private var var_312:RoomThumbnailCtrl;
      
      private var var_1137:TagRenderer;
      
      private var var_426:IWindowContainer;
      
      private var var_423:IWindowContainer;
      
      private var var_741:IWindowContainer;
      
      private var var_2202:IWindowContainer;
      
      private var var_2199:IWindowContainer;
      
      private var var_1401:IWindowContainer;
      
      private var var_1083:ITextWindow;
      
      private var var_1136:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_920:ITextWindow;
      
      private var var_1406:ITextWindow;
      
      private var var_1138:ITextWindow;
      
      private var var_924:ITextWindow;
      
      private var var_1697:ITextWindow;
      
      private var var_311:IWindowContainer;
      
      private var var_922:IWindowContainer;
      
      private var var_1695:IWindowContainer;
      
      private var var_2200:ITextWindow;
      
      private var var_742:ITextWindow;
      
      private var var_2201:IWindow;
      
      private var var_1407:IContainerButtonWindow;
      
      private var var_1402:IContainerButtonWindow;
      
      private var var_1403:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1405:IContainerButtonWindow;
      
      private var var_1699:IButtonWindow;
      
      private var var_1696:IButtonWindow;
      
      private var var_1700:IButtonWindow;
      
      private var var_923:IWindowContainer;
      
      private var var_1404:ITextWindow;
      
      private var var_1139:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_921:IButtonWindow;
      
      private var var_1698:Boolean = false;
      
      private const const_894:int = 75;
      
      private const const_982:int = 3;
      
      private const const_824:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_425 = new RoomEventViewCtrl(this._navigator);
         this.var_165 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_312 = new RoomThumbnailCtrl(this._navigator);
         this.var_1137 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_165);
         this.var_424 = new Timer(6000,1);
         this.var_424.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_424)
         {
            this.var_424.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_424.reset();
            this.var_424 = null;
         }
         this._navigator = null;
         this.var_425 = null;
         this.var_165 = null;
         this.var_312 = null;
         if(this.var_1137)
         {
            this.var_1137.dispose();
            this.var_1137 = null;
         }
         this.var_209 = null;
         this.var_426 = null;
         this.var_423 = null;
         this.var_741 = null;
         this.var_2202 = null;
         this.var_2199 = null;
         this.var_1401 = null;
         this.var_1083 = null;
         this.var_1136 = null;
         this._ownerName = null;
         this.var_920 = null;
         this.var_1406 = null;
         this.var_1138 = null;
         this.var_924 = null;
         this.var_1697 = null;
         this.var_311 = null;
         this.var_922 = null;
         this.var_1695 = null;
         this.var_2200 = null;
         this.var_742 = null;
         this.var_2201 = null;
         this.var_1407 = null;
         this.var_1402 = null;
         this.var_1403 = null;
         this._remFavouriteButton = null;
         this.var_1405 = null;
         this.var_1699 = null;
         this.var_1696 = null;
         this.var_1700 = null;
         this.var_923 = null;
         this.var_1404 = null;
         this.var_1139 = null;
         this._buttons = null;
         this.var_921 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_424.reset();
         this.var_425.active = true;
         this.var_165.active = false;
         this.var_312.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_424.reset();
         this.var_165.load(param1);
         this.var_165.active = true;
         this.var_425.active = false;
         this.var_312.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_165.active = true;
         this.var_425.active = false;
         this.var_312.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_424.reset();
         this.var_165.active = false;
         this.var_425.active = false;
         this.var_312.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1698 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_424.reset();
         this.var_425.active = false;
         this.var_165.active = false;
         this.var_312.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_982;
         this._window.y = this.const_894;
         if(this._navigator.configuration.getBoolean("club.membership.extend.promotion.enabled",false))
         {
            this._window.y = 91;
         }
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_209,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_209.height = Util.getLowestPoint(this.var_209);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_824;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_426);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_165.refresh(this.var_426);
         this.var_312.refresh(this.var_426);
         Util.moveChildrenToColumn(this.var_426,["room_details","room_buttons"],0,2);
         this.var_426.height = Util.getLowestPoint(this.var_426);
         this.var_426.visible = true;
         Logger.log("XORP: " + this.var_423.visible + ", " + this.var_1401.visible + ", " + this.var_741.visible + ", " + this.var_741.rectangle + ", " + this.var_426.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_311);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_425.refresh(this.var_311);
         if(Util.hasVisibleChildren(this.var_311) && !(this.var_165.active || this.var_312.active))
         {
            Util.moveChildrenToColumn(this.var_311,["event_details","event_buttons"],0,2);
            this.var_311.height = Util.getLowestPoint(this.var_311);
            this.var_311.visible = true;
         }
         else
         {
            this.var_311.visible = false;
         }
         Logger.log("EVENT: " + this.var_311.visible + ", " + this.var_311.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","RoomObjectVisualizationEnum") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_165.active && !this.var_312.active && !this.var_425.active)
         {
            this.var_923.visible = true;
            this.var_1139.text = this.getEmbedData();
         }
         else
         {
            this.var_923.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_165.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_921)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_921.visible = _loc1_;
            if(this.var_1698)
            {
               this.var_921.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_921.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_165.active || this.var_312.active)
         {
            return;
         }
         this.var_1083.text = param1.roomName;
         this.var_1083.height = this.var_1083.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_920.text = param1.description;
         this.var_1137.refreshTags(this.var_423,param1.tags);
         this.var_920.visible = false;
         if(param1.description != "")
         {
            this.var_920.height = this.var_920.textHeight + 5;
            this.var_920.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1402,"facebook_logo_small",_loc3_,null,0);
         this.var_1402.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1407,"thumb_up",_loc4_,null,0);
         this.var_1407.visible = _loc4_;
         this.var_924.visible = !_loc4_;
         this.var_1697.visible = !_loc4_;
         this.var_1697.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_423,"home",param2,null,0);
         this._navigator.refreshButton(this.var_423,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_423,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_1083.y,0);
         this.var_423.visible = true;
         this.var_423.height = Util.getLowestPoint(this.var_423);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_423.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_165.active || this.var_312.active)
         {
            return;
         }
         this.var_1136.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1136.height = this.var_1136.textHeight + 5;
         this.var_1406.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1406.height = this.var_1406.textHeight + 5;
         Util.moveChildrenToColumn(this.var_741,["public_space_name","public_space_desc"],this.var_1136.y,0);
         this.var_741.visible = true;
         this.var_741.height = Math.max(86,Util.getLowestPoint(this.var_741));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_425.active)
         {
            return;
         }
         this.var_2200.text = param1.eventName;
         this.var_742.text = param1.eventDescription;
         this.var_1137.refreshTags(this.var_922,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_742.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_742.height = this.var_742.textHeight + 5;
            this.var_742.y = Util.getLowestPoint(this.var_922) + 2;
            this.var_742.visible = true;
         }
         this.var_922.visible = true;
         this.var_922.height = Util.getLowestPoint(this.var_922);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_165.active || this.var_312.active)
         {
            return;
         }
         this.var_1699.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1403.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1405.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1401.visible = Util.hasVisibleChildren(this.var_1401);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_425.active)
         {
            return;
         }
         this.var_1696.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1700.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1695.visible = Util.hasVisibleChildren(this.var_1695);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_209 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_426 = IWindowContainer(this.find("room_info"));
         this.var_423 = IWindowContainer(this.find("room_details"));
         this.var_741 = IWindowContainer(this.find("public_space_details"));
         this.var_2202 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2199 = IWindowContainer(this.find("rating_cont"));
         this.var_1401 = IWindowContainer(this.find("room_buttons"));
         this.var_1083 = ITextWindow(this.find("room_name"));
         this.var_1136 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_920 = ITextWindow(this.find("room_desc"));
         this.var_1406 = ITextWindow(this.find("public_space_desc"));
         this.var_1138 = ITextWindow(this.find("owner_caption"));
         this.var_924 = ITextWindow(this.find("rating_caption"));
         this.var_1697 = ITextWindow(this.find("rating_txt"));
         this.var_311 = IWindowContainer(this.find("event_info"));
         this.var_922 = IWindowContainer(this.find("event_details"));
         this.var_1695 = IWindowContainer(this.find("event_buttons"));
         this.var_2200 = ITextWindow(this.find("event_name"));
         this.var_742 = ITextWindow(this.find("event_desc"));
         this.var_1402 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1407 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2201 = this.find("staff_pick_button");
         this.var_1403 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1405 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1699 = IButtonWindow(this.find("room_settings_button"));
         this.var_1696 = IButtonWindow(this.find("create_event_button"));
         this.var_1700 = IButtonWindow(this.find("edit_event_button"));
         this.var_923 = IWindowContainer(this.find("embed_info"));
         this.var_1404 = ITextWindow(this.find("embed_info_txt"));
         this.var_1139 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_921 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1403,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1699,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1405,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1696,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1700,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1139,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1407,this.onThumbUp);
         this.addMouseClickListener(this.var_2201,this.onStaffPick);
         this.addMouseClickListener(this.var_1402,this.onFacebookLike);
         this.addMouseClickListener(this.var_921,this.onZoomClick);
         this._navigator.refreshButton(this.var_1403,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1405,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_426,this.onHover);
         this.addMouseOverListener(this.var_311,this.onHover);
         this.var_1138.width = this.var_1138.textWidth;
         Util.moveChildrenToRow(this.var_2202,["owner_caption","owner_name"],this.var_1138.x,this.var_1138.y,3);
         this.var_924.width = this.var_924.textWidth;
         Util.moveChildrenToRow(this.var_2199,["rating_caption","rating_txt"],this.var_924.x,this.var_924.y,3);
         this.var_1404.height = this.var_1404.textHeight + 5;
         Util.moveChildrenToColumn(this.var_923,["embed_info_txt","embed_src_txt"],this.var_1404.y,2);
         this.var_923.height = Util.getLowestPoint(this.var_923) + 5;
         this.var_3101 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_1139.setSelection(0,this.var_1139.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_326));
         this.var_1698 = !this.var_1698;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_424.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_165 != null)
         {
            this.var_165.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
