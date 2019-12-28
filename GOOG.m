filename='GOOGforBSM.xlsx';
PriceRange='N2:N26155';
Price=xlsread(filename,PriceRange);
StrikeRange='G2:G26155';
Strike=xlsread(filename,StrikeRange);
%RateRange='Q2:Q21270';
%Rate=xlsread(filename,RateRange);
TimeRange='Q2:Q26155';
Time=xlsread(filename,TimeRange);
VolatilityRange='I2:I26155';
Volatility=xlsread(filename,VolatilityRange);
[Call,Put]=blsprice(Price,Strike,.26,Time,Volatility);





