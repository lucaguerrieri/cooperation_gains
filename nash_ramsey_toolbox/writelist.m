% =========================================================================
% Write out list to output file
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

function writelist(outfid, initstring, listcmat, delim, endline);

outstring = initstring;
initlen = length(initstring);
nlist = length(listcmat);

for iv = 1:nlist,
   cname = char(listcmat(iv));
   outstring = [outstring ' ' cname];
   if iv < nlist,
     outstring = [outstring delim];
     if length(outstring) > 65,
       fprintf(outfid,'%s \n',[outstring,endline]);
       outstring = blanks(initlen);
     end;
   elseif iv == nlist,
     fprintf(outfid,'%s \n',[outstring,';']);       
   end;
end;

fprintf(outfid,'%s \n',' ');
