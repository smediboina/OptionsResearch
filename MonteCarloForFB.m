 filename1="CallsFB.xlsx";
   Calls=xlsread(filename1);
   [NumOfRows,NumOfColumns]=size(Calls);
   filename2="PutsFB.xlsx";
   Puts=xlsread(filename2);
   [NumOfRows1,NumOfColumns1]=size(Puts);
   
   for whichrow=2:NumOfRows
       sigma=Calls(whichrow,7); 
       S0=Calls(whichrow,12);
       r=.26;
       D=0;
       T=Calls(whichrow,15);
    dt=T/50;
    N=round(T/dt);
    Nsim=130000;
    dBt=sqrt(dt)*rand(Nsim,N);
    St=zeros(Nsim,N);
    St(:,1)=S0*ones(Nsim,1);
    for t=2:N
       St(:,t)=St(:,t-1).*exp((r-D-.5*sigma^2)*dt+sigma*dBt(:,t));
       
    end 
    MaximumStockPrices=max(St,[],2);
    MaxCalls(whichrow)=mean(MaximumStockPrices);
    MinimumStockPrices=min(St,[],2);
    MinCalls(whichrow)=mean(MinimumStockPrices);
    MeanStockPrices=mean(St,2);
    MeanCalls(whichrow)=mean(MeanStockPrices);
    
    
        
   end


 for whichrow=2:NumOfRows1
       sigma=Puts(whichrow,7);
       S0=Puts(whichrow,12);
       r=.26;
       D=0;
       T=Puts(whichrow,15);
    dt=T/50;
    N=round(T/dt);
    Nsim=130000;
    dBt=sqrt(dt)*rand(Nsim,N);
    St=zeros(Nsim,N);
    St(:,1)=S0*ones(Nsim,1);
    for t=2:N
       St(:,t)=St(:,t-1).*exp((r-D-.5*sigma^2)*dt+sigma*dBt(:,t));
       
    end
    MaximumStockPrices=max(St,[],2);
    MaxPuts(whichrow)=mean(MaximumStockPrices);
    MinimumStockPrices=min(St,[],2);
    MinPuts(whichrow)=mean(MinimumStockPrices);
    MeanStockPrices=mean(St,2);
    MeanPuts(whichrow)=mean(MeanStockPrices);    
   end