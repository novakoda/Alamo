class Params{
  class StartCash {
  title = "Starting Money";
  texts[]= {"0","500","1000 (Default)","2500","5000","10000","20000","50000","100000"};
  values[]= {0,500,1000,2500,5000,10000,20000,50000,100000};
  default= 1000; };

  class Prices {
  title = "Prices";
  texts[]= {"75% Off","50% Off","25% Off","Default","1.5 X","Double","Triple"};
  values[]= {.25,.5,.75,1,1.5,2,3};
  default= 1; };

  class CashReward {
  title = "Cash Reward";
  texts[]= {"75% Less","50% Less","25% Less","Default","1.5 X","Double","Triple"};
  values[]= {.25,.5,.75,1,1.5,2,3};
  default= 1; };

  class Weather {
  title = "Weather Changes";
  texts[]= {"Every Level","Every 2 Levels","Every 3 Levels (Default)","Every 5 Levels","Every 10 Levels","Never"};
  values[]= {1,2,3,5,10,0};
  default= 3; };

  class Rain {
  title = "Rain Changes";
  texts[]= {"Every Level","Every 2 Levels","Every 3 Levels (Default)","Every 5 Levels","Every 10 Levels","Never"};
  values[]= {1,2,3,5,10,0};
  default= 3; };

  class Start {
  title = "Starting Wave";
  texts[]= {"1 (Default)","5","10","15","20","25","30"};
  values[]= {1,5,10,15,20,25,30};
  default= 1; };

  class BetweenTime {
  title = "Time Between Waves";
  texts[]= {"None","5 seconds","10 seconds (Default)","20 seconds","30 seconds", "1 minute", "2 minutes", "3 minutes"};
  values[]= {0,5,10,20,30,60,120,180};
  default= 1; };

  class mods {
  title = "Enemy Units & Vehicles";
  texts[]= {"AAF","CSAT","NATO","FIA","Syndikat","RHS (Russian)"};
  values[]= {0,1,2,3,4,5};
  default= 0; };
};
