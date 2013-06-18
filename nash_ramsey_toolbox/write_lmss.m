% =========================================================================
% Write out M-file containing the system of linear equations for 
% solving steady-state lagrange multipliers in terms of steady states 
% of the original model variables.  In particular, given the matrices
% lmss_mat and lmss_vec as determined by get_ramsey, the steady state
% lagrange multipliers lmss_vec satisfy the following:
%                 lmss_mat*lmss_vals + lmss_vec = 0
%
% (c) Andrew T. Levin 2005
%
% Note: This program (and associated subroutines) may be used freely 
% subject to acknowledgement of the source and citation of either or
% both of the following papers (for which these routines were created):
%
%  Levin, A., Lopez-Salido, J.D., 2004.  "Optimal Monetary Policy with
%    Endogenous Capital Accumulation", manuscript, Federal Reserve Board.
%
%  Levin, A., Onatski, A., Williams, J., Williams, N., 2005. "Monetary 
%    Policy under Uncertainty in Microfounded Macroeconometric Models."
%    In: NBER Macroeconomics Annual 2005, Gertler, M., Rogoff, K., eds.
%    Cambridge, MA:  MIT Press.
% =========================================================================

outfid = fopen([outfilename,'_lmss.m'],'w');
fprintf(outfid,'%s \n\n', ...
 '% Coefficients defining linear system for obtaining steady states of LM variables');

% Define all steady states as global variables

delim = '';
endline = ' ...';

% writelist(outfid,'global',varss_list,delim,endline);
% writelist(outfid,'global',lmss_list,delim,endline);

% Write out coefficients of linear system

for icoef = 1:length(lmss_coefdefs),
  coefstring = char(lmss_coefdefs(icoef));
  fprintf(outfid,'%s \n',coefstring);
end;
  
% Give commands for obtaining solution and making variable assignments 

fprintf(outfid,'\n%s \n','lmss_vals = -lmss_mat \ lmss_vec;');
fprintf(outfid,'%s \n','errcheck = max(abs(lmss_mat*lmss_vals + lmss_vec));');
fprintf(outfid,'%s \n','if errcheck > 1e-08,');
fprintf(outfid,'%s \n',['  disp(''Warning: steady states of lagrange multipliers',...
               ' cannot be accurately determined'');']);
fprintf(outfid,'%s \n', '  disp([''         errcheck = '',num2str(errcheck,12)]);');
fprintf(outfid,'%s \n\n','end;');

for ilm = 1:length(lmss_list),
  lmssname = char(lmss_list(ilm));
  fprintf(outfid,'%s \n',['  ',lmssname,' = lmss_vals(',num2str(ilm),');']);
end;

% Finally, close output file

fclose(outfid);
