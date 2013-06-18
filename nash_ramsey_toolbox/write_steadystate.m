% Write out M-file in which the steady state is stored 
% as coefficients with suffix _SS .  Note that the output file
% is called outfilename_SS.m , where outfilename is set by user.

global lgy_ ys_;

% Retrieve steady state values

coefvmat = '';
coefdefs = '';
for ivar = 1:size(lgy_,1),
  coefvmat = strvcat(coefvmat,[deblank(lgy_(ivar,:)),'_SS']);
  coefdefs = strvcat(coefdefs,num2str(ys_(ivar),'%24.16g'));
end;

% Open output file and insert header line

outfid = fopen([outfilename,'_SS.m'],'w');
fprintf(outfid,'%s \n\n','% Coefficients defining steady state values');

% Specify coefficients as global variables and then write definitions

writelist(outfid,'global',cellstr(coefvmat),'',' ...');

for icoef = 1:size(coefvmat,1),
  coefname = deblank(coefvmat(icoef,:));
  coefdef = deblank(coefdefs(icoef,:));
  coefstring = [coefname,' = ',coefdef,';'];
  fprintf(outfid,'%s \n',coefstring);
end;
  
fclose(outfid);