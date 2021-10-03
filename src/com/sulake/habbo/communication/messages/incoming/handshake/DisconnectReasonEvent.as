package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1744:int = 0;
      
      public static const const_1461:int = 1;
      
      public static const const_1417:int = 2;
      
      public static const const_1861:int = 3;
      
      public static const const_1894:int = 4;
      
      public static const const_1889:int = 5;
      
      public static const const_1557:int = 10;
      
      public static const const_1927:int = 11;
      
      public static const const_1807:int = 12;
      
      public static const const_1813:int = 13;
      
      public static const const_1892:int = 16;
      
      public static const const_1868:int = 17;
      
      public static const const_1888:int = 18;
      
      public static const const_1718:int = 19;
      
      public static const const_1886:int = 20;
      
      public static const const_1924:int = 22;
      
      public static const const_1859:int = 23;
      
      public static const const_1827:int = 24;
      
      public static const const_1739:int = 25;
      
      public static const const_1787:int = 26;
      
      public static const const_1925:int = 27;
      
      public static const const_1808:int = 28;
      
      public static const const_1893:int = 29;
      
      public static const const_1871:int = 100;
      
      public static const const_1753:int = 101;
      
      public static const const_1919:int = 102;
      
      public static const const_1908:int = 103;
      
      public static const const_1900:int = 104;
      
      public static const const_1762:int = 105;
      
      public static const const_1906:int = 106;
      
      public static const const_1797:int = 107;
      
      public static const const_1760:int = 108;
      
      public static const const_1711:int = 109;
      
      public static const const_1805:int = 110;
      
      public static const const_1855:int = 111;
      
      public static const const_1786:int = 112;
      
      public static const const_1725:int = 113;
      
      public static const const_1735:int = 114;
      
      public static const const_1881:int = 115;
      
      public static const const_1812:int = 116;
      
      public static const const_1731:int = 117;
      
      public static const const_1734:int = 118;
      
      public static const const_1862:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1461:
            case const_1557:
               return "banned";
            case const_1417:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
