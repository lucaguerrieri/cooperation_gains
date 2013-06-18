% Copy steady state values into global variables with suffix _SS

global lgy_ ys_;

nyvars = size(lgy_,1);
for ivar = 1:nyvars,
  vname = deblank(lgy_(ivar,:));
  eval(['global ',vname,'_SS;']);
  eval(['ys_(',num2str(ivar),') = ',vname,'_SS;']);
end;