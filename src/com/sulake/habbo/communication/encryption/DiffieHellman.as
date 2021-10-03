package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1106:BigInteger;
      
      private var var_2470:BigInteger;
      
      private var var_2177:BigInteger;
      
      private var var_2994:BigInteger;
      
      private var var_1687:BigInteger;
      
      private var var_2178:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1687 = param1;
         this.var_2178 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1687.toString() + ",generator: " + this.var_2178.toString() + ",secret: " + param1);
         this.var_1106 = new BigInteger();
         this.var_1106.fromRadix(param1,param2);
         this.var_2470 = this.var_2178.modPow(this.var_1106,this.var_1687);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2177 = new BigInteger();
         this.var_2177.fromRadix(param1,param2);
         this.var_2994 = this.var_2177.modPow(this.var_1106,this.var_1687);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2470.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2994.toRadix(param1);
      }
   }
}
