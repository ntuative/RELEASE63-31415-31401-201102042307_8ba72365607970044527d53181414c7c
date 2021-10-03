package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_903:BigInteger;
      
      private var var_2449:BigInteger;
      
      private var var_1750:BigInteger;
      
      private var var_2476:BigInteger;
      
      private var var_1372:BigInteger;
      
      private var var_1751:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1372 = param1;
         this.var_1751 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1372.toString() + ",generator: " + this.var_1751.toString() + ",secret: " + param1);
         this.var_903 = new BigInteger();
         this.var_903.fromRadix(param1,param2);
         this.var_2449 = this.var_1751.modPow(this.var_903,this.var_1372);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1750 = new BigInteger();
         this.var_1750.fromRadix(param1,param2);
         this.var_2476 = this.var_1750.modPow(this.var_903,this.var_1372);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2449.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2476.toRadix(param1);
      }
   }
}
