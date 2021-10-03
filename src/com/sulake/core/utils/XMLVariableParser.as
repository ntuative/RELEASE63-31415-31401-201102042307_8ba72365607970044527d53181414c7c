package com.sulake.core.utils
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class XMLVariableParser
   {
      
      public static const const_128:String = "hex";
      
      public static const const_38:String = "int";
      
      public static const const_259:String = "uint";
      
      public static const const_269:String = "Number";
      
      public static const const_1467:String = "float";
      
      public static const const_36:String = "Boolean";
      
      public static const const_1444:String = "bool";
      
      public static const const_52:String = "String";
      
      public static const const_268:String = "Point";
      
      public static const const_221:String = "Rectangle";
      
      public static const const_127:String = "Array";
      
      public static const const_246:String = "Map";
      
      private static const const_604:String = "key";
      
      private static const const_961:String = "type";
      
      private static const const_605:String = "value";
      
      private static const const_600:String = "true";
      
      private static const const_1700:String = "false";
      
      private static const X:String = "x";
      
      private static const Y:String = "y";
      
      private static const const_1323:String = "width";
      
      private static const const_1330:String = "height";
      
      private static const const_1328:String = ",";
       
      
      public function XMLVariableParser()
      {
         super();
      }
      
      public static function parseVariableList(param1:XMLList, param2:Map, param3:Array = null) : uint
      {
         var _loc5_:int = 0;
         var _loc4_:uint = param1.length();
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            XMLVariableParser.parseVariableToken(param1[_loc5_],param2,param3);
            _loc5_++;
         }
         return _loc4_;
      }
      
      private static function parseVariableToken(param1:XML, param2:Map, param3:Array = null) : void
      {
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc5_:String = const_52;
         _loc7_ = param1.attribute(const_604);
         if(_loc7_.length() > 0)
         {
            _loc4_ = String(param1.attribute(const_604));
         }
         else
         {
            _loc4_ = param1.child(const_604)[0];
         }
         _loc7_ = param1.attribute(const_961);
         if(_loc7_.length() > 0)
         {
            _loc5_ = String(param1.attribute(const_961));
         }
         _loc7_ = param1.attribute(const_605);
         if(_loc7_.length() > 0)
         {
            _loc6_ = String(param1.attribute(const_605));
         }
         if(_loc6_ != null)
         {
            param2[_loc4_] = XMLVariableParser.castStringToType(_loc6_,_loc5_);
         }
         else
         {
            _loc8_ = param1.child(const_605)[0];
            if(_loc8_ != null)
            {
               _loc9_ = _loc8_.child(0)[0];
               _loc6_ = _loc9_.children()[0];
               _loc5_ = _loc9_.localName();
               param2[_loc4_] = XMLVariableParser.parseValueType(_loc9_,_loc5_);
            }
            else if(_loc5_ == const_246 || _loc5_ == const_127)
            {
               param2[_loc4_] = XMLVariableParser.parseValueType(param1,_loc5_);
            }
         }
         if(param3)
         {
            param3.push(_loc5_);
         }
      }
      
      public static function castStringToType(param1:String, param2:String) : Object
      {
         switch(param2)
         {
            case const_259:
               return uint(param1);
            case const_38:
               return int(param1);
            case const_269:
               return Number(param1);
            case const_1467:
               return Number(param1);
            case const_36:
               return param1 == const_600 || int(param1) > 0;
            case const_1444:
               return param1 == const_600 || int(param1) > 0;
            case const_128:
               return uint(param1);
            case const_127:
               return param1.split(const_1328);
            default:
               return String(param1);
         }
      }
      
      public static function parseValueType(param1:XML, param2:String) : Object
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         switch(param2)
         {
            case const_52:
               return String(param1);
            case const_268:
               _loc4_ = new Point();
               _loc4_.x = Number(param1.attribute(X));
               _loc4_.y = Number(param1.attribute(Y));
               return _loc4_;
            case const_221:
               _loc5_ = new Rectangle();
               _loc5_.x = Number(param1.attribute(X));
               _loc5_.y = Number(param1.attribute(Y));
               _loc5_.width = Number(param1.attribute(const_1323));
               _loc5_.height = Number(param1.attribute(const_1330));
               return _loc5_;
            case const_127:
               _loc3_ = new Map();
               parseVariableList(param1.children(),_loc3_);
               _loc6_ = new Array();
               for(_loc7_ in _loc3_)
               {
                  _loc6_.push(_loc3_[_loc7_]);
               }
               return _loc6_;
            case const_246:
               _loc3_ = new Map();
               XMLVariableParser.parseVariableList(param1.children(),_loc3_);
               return _loc3_;
            default:
               throw new Error("Unable to parse data type \"" + param2 + "\", unknown type!");
         }
      }
   }
}
