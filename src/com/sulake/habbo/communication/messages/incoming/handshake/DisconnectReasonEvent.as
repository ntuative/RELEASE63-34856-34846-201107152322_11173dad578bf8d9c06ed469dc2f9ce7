package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2267:int = 0;
      
      public static const const_1834:int = 1;
      
      public static const const_1981:int = 2;
      
      public static const const_2304:int = 3;
      
      public static const const_2130:int = 4;
      
      public static const const_2314:int = 5;
      
      public static const const_1873:int = 10;
      
      public static const const_2161:int = 11;
      
      public static const const_2274:int = 12;
      
      public static const const_2208:int = 13;
      
      public static const const_2325:int = 16;
      
      public static const const_2309:int = 17;
      
      public static const const_2119:int = 18;
      
      public static const const_2192:int = 19;
      
      public static const const_2177:int = 20;
      
      public static const const_2148:int = 22;
      
      public static const const_2276:int = 23;
      
      public static const const_2254:int = 24;
      
      public static const const_2108:int = 25;
      
      public static const const_2268:int = 26;
      
      public static const const_2281:int = 27;
      
      public static const const_2296:int = 28;
      
      public static const const_2255:int = 29;
      
      public static const const_2285:int = 100;
      
      public static const const_2164:int = 101;
      
      public static const const_2107:int = 102;
      
      public static const const_2244:int = 103;
      
      public static const const_2302:int = 104;
      
      public static const const_2257:int = 105;
      
      public static const const_2216:int = 106;
      
      public static const const_2327:int = 107;
      
      public static const const_2143:int = 108;
      
      public static const const_2207:int = 109;
      
      public static const const_2144:int = 110;
      
      public static const const_2326:int = 111;
      
      public static const const_2280:int = 112;
      
      public static const const_2229:int = 113;
      
      public static const const_2169:int = 114;
      
      public static const const_2284:int = 115;
      
      public static const const_2133:int = 116;
      
      public static const const_2187:int = 117;
      
      public static const const_2237:int = 118;
      
      public static const const_2324:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1834:
            case const_1873:
               return "banned";
            case const_1981:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
