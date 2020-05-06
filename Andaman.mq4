//+------------------------------------------------------------------+
//|                                                      Andaman.mq4 |
//|                                     Copyright 2020, Yuki Matsuo. |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, Yuki Matsuo."
#property link      ""
#property version   "1.00"
#property strict

#include "TradeDialog.mqh"

#define TD_X (1350)
#define TD_Y (50)
CTradeDialog TradeDialog;

int OnInit(void)
  {
   if(!TradeDialog.Create(0,"Trade Controller",0,TD_X,TD_Y,0,0))
     return(INIT_FAILED);

   if(!TradeDialog.Run())
     return(INIT_FAILED);

   return(INIT_SUCCEEDED);
  }

void OnDeinit(const int reason)
  {
   TradeDialog.Destroy(reason);
  }

void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
   TradeDialog.ChartEvent(id,lparam,dparam,sparam);
  }