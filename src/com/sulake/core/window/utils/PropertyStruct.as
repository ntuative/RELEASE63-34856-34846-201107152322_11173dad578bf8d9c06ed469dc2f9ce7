package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_176:String = "hex";
      
      public static const const_37:String = "int";
      
      public static const const_285:String = "uint";
      
      public static const const_138:String = "Number";
      
      public static const const_38:String = "Boolean";
      
      public static const const_51:String = "String";
      
      public static const const_286:String = "Point";
      
      public static const const_256:String = "Rectangle";
      
      public static const const_164:String = "Array";
      
      public static const const_300:String = "Map";
       
      
      private var var_735:String;
      
      private var var_210:Object;
      
      private var _type:String;
      
      private var var_3001:Boolean;
      
      private var var_3099:Boolean;
      
      private var var_3000:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_735 = param1;
         this.var_210 = param2;
         this._type = param3;
         this.var_3001 = param4;
         this.var_3099 = param3 == const_300 || param3 == const_164 || param3 == const_286 || param3 == const_256;
         this.var_3000 = param5;
      }
      
      public function get key() : String
      {
         return this.var_735;
      }
      
      public function get value() : Object
      {
         return this.var_210;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_3001;
      }
      
      public function get range() : Array
      {
         return this.var_3000;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_176:
               return "0x" + uint(this.var_210).toString(16);
            case const_38:
               return Boolean(this.var_210) == true ? "true" : "RoomObjectVisualizationEnum";
            case const_286:
               return "Point(" + Point(this.var_210).x + ", " + Point(this.var_210).y + ")";
            case const_256:
               return "Rectangle(" + Rectangle(this.var_210).x + ", " + Rectangle(this.var_210).y + ", " + Rectangle(this.var_210).width + ", " + Rectangle(this.var_210).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_300:
               _loc3_ = this.var_210 as Map;
               _loc1_ = "<var key=\"" + this.var_735 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_164:
               _loc4_ = this.var_210 as Array;
               _loc1_ = "<var key=\"" + this.var_735 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_286:
               _loc5_ = this.var_210 as Point;
               _loc1_ = "<var key=\"" + this.var_735 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_256:
               _loc6_ = this.var_210 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_735 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_176:
               _loc1_ = "<var key=\"" + this.var_735 + "\" value=\"" + "0x" + uint(this.var_210).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_735 + "\" value=\"" + this.var_210 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
