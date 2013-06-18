% Write out Ramsey model to dynare .MOD file
% Assumes that rawfile, focmat, lmult_string, and lmult_initstr
% have been set by dynmod2sym and get_ramsey

% Searches for a _steadystate.m filename. This means that an initval block
% has not been initialized, which would ordinarily trigger get_ramsey;
% thus, we set endinitline to a nonzero value.

modfilename = cat(2,infilename,'_steadystate.m');

if exist(modfilename,'file'),
    endinitline = 1;
end;

% Confirm that modline, ruleline, endruleline, and endinitline
% have been determined by dynmod2sym

if ~modline | ~endinitline | ~rulecount,
  error('Key line in input file not found (modline, ruleline, or endinitline)');
end;


% Open output file (assumes that outfilename has been set)

[outfid,msg] = fopen([outfilename,'.mod'],'w');

% Copy all lines of input file prior to "model" keyword

for iline = 1:(modline-1),
  fprintf(outfid,'%s \n',char(rawfile(iline)));
end;

% Declare lagrange multipliers as dynare endogenous variables
% and declare lagrange multiplier steady states as "parameters"

delim = ', ';
endline = ' ';
writelist(outfid,'var',lmultlist,delim,endline);
%writelist(outfid,'parameters',lmss_list,delim,endline);

% Copy all lines from "model" keyword until first policy rule equation

for iline = modline:rulestartline(1),
  fprintf(outfid,'%s \n',char(rawfile(iline)));
end;

% Write out Ramsey FOCs

fprintf(outfid,'%s \n', '// Policymaker''s First-Order Conditions');

for ifoc = 1:length(focmat),
  fprintf(outfid,'%s \n',char(focmat(ifoc)));
end;

% Copy input file lines (not including any other simple policy equations)
% prior to the end of the variable initialization block

startline = rulestopline(1) + 1;
for irule = 2:rulecount,
  stopline = rulestartline(irule);
  for iline = startline:stopline,
    fprintf(outfid,'%s \n',char(rawfile(iline)));
  end;
  startline = rulestopline(irule) + 1;
end;
  
if endinitline < 2,
  for iline = startline:length(rawfile),
    fprintf(outfid,'%s \n',char(rawfile(iline)));
  end;  
  
  
else
  for iline = startline:(endinitline-1),
    fprintf(outfid,'%s \n',char(rawfile(iline)));
  end;

% Write out initial guesses for Lagrange multipliers

  for ilm = 1:length(lmultlist),
    lmname = char(lmultlist(ilm));
    lmult_initstr = [lmname,' = 0;'];
    fprintf(outfid,'%s \n',lmult_initstr);
  end;

% Write out "end" keyword for initialization block,
% and then copy the rest of the input file

  for iline = endinitline:length(rawfile),
    fprintf(outfid,'%s \n',char(rawfile(iline)));
  end;
  
  fclose(outfid);
end;

fclose(outfid);