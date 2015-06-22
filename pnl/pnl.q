// pnl table construction

sym:60
per:.25

traders:get`:pnl/traders
stocks:1!sym?get`:pnl/stocks
strategies:`statarb`pairs`mergerarb`chart`other`distressed`arbitrage
groups:{z,(1#x)!enlist(neg 1+rand count[y])?y}
traders:ungroup groups[`strategy;strategies]each traders
traders:ungroup groups[`symbol;exec symbol from stocks]each traders
traders:1!`id`unit`trader`strategy`symbol xcols update id:til count traders from traders
z:2015.06.22T09:30:00.000+00:01:00.000*til 391
dates:z.date;times:z.time

trades:([]
 id:`int$();
 symbol:`symbol$();
 date:`date$();
 time:`time$();
 price:`float$();
 qty:`int$())

trade:{[st;tr;r;d;t]
 n:neg m:floor per*c:count tr;
 i:exec id from tr where i in n?c;
 s:tr[flip enlist i;`symbol];
 p:(exec symbol!oprice from st)s;
 p+:(m?-1 0 1)*(m?.001)*p;
 q:(m?-1 1)*100*1+m?10;
 r,flip cols[r]!(i;s;d;t;p;q)}

trades:trade[stocks;traders]/[trades;dates;times]
t:select trades:count trades,qty:sum qty,cprice:last price,vwap:qty wavg price by id from trades
pnl:(0!traders lj update real:qty*vwap,unreal:qty*cprice from t)lj stocks
pnl:update pnl:real+unreal from pnl;
pnl:update vwap:0n from pnl where 0w=abs vwap

save`:pnl/pnl

