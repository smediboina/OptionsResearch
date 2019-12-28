filename='AAPLforBSM.xlsx';
PriceRange='N2:N21270';
Price=xlsread(filename,PriceRange);
StrikeRange='G2:G21270';
Strike=xlsread(filename,StrikeRange);
%RateRange='Q2:Q21270';
%Rate=xlsread(filename,RateRange);
TimeRange='Q2:Q21270';
Time=xlsread(filename,TimeRange);
VolatilityRange='I2:I21270';
Volatility=xlsread(filename,VolatilityRange);
[Call,Put]=blsprice(Price,Strike,.26,Time,Volatility);





