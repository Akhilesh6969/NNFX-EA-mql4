//+------------------------------------------------------------------+
//|                                                       NiNone.mqh |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property strict


#include <NNFX\Indicators\Interfaces.mqh>

/*
 *Indicador sin señal */
 
class NiNoneB: public IBaseline
{
private:

public:
               NiNoneB(){}
              ~NiNoneB(){}
   void        InitIndicator(string symbol,int timeframe){}
   void        Refresh(){}
   void        Refresh(int shift){}
   
   //--- Condition rules           
   bool        entryLong(){return false;}
   bool        entryShort(){return false;}
   double      baselineDirection(){return 0.0;}
   bool        confirmationLong(){return true;}
   bool        confirmationShort(){return true;}
   bool        exitLong(){return false;}
   bool        exitShort(){return false;}

};

class NiNoneC: public IConfirmation
{
private:

public:
               NiNoneC(){}
              ~NiNoneC(){}
   void        InitIndicator(string symbol,int timeframe){}
   void        Refresh(){}
   void        Refresh(int shift){}
   
   //--- Condition rules           
   bool        entryLong(){return false;}
   bool        entryShort(){return false;}
   bool        confirmationLong(){return true;}
   bool        confirmationShort(){return true;}
};


class NiNoneV : public IVolume
{
private:

public:
               NiNoneV(){}
              ~NiNoneV(){}
   void        InitIndicator(string symbol,int timeframe){}
   void        Refresh(){}
   void        Refresh(int shift){}
   
   //--- Condition rules           
   bool        confirmationLong(){return true;}
   bool        confirmationShort(){return true;}
};



class NiNoneE : public IExit
{
private:

public:
               NiNoneE(){}
              ~NiNoneE(){}
   void        InitIndicator(string symbol,int timeframe){}
   void        Refresh(){}
   void        Refresh(int shift){}
   
   //--- Condition rules           
   bool exitLong() {return false;}
   bool exitShort(){return false;}
};
