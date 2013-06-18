% =========================================================================
% Takes input equation string and returns modified string,
% where the suffix _0 is added to contemporaneous variables, 
% the suffixes _L# and _F# are used to denote lags and leads,
% and a double-underscore is added to all parameter names.
% Note: this function assumes that the input string ends 
% with a semicolon (not a variable name).
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

function [neqstring,eq_varincid,maxeqvlags,maxeqvleads, ...
          eq_shkincid] = tokenize(eqstring,varcmat,shkcmat,parcmat);

delims = '()~+-*/=<>^; ';

nvars = length(varcmat);
maxeqvlags = zeros(1,nvars);
maxeqvleads = zeros(1,nvars);
eq_varincid = cell(nvars,1);

nshks = length(shkcmat);
eq_shkincid = zeros(nshks,1);

neqstring = '';
instring = eqstring;
while length(instring),
    
% Find the next word, which is followed by a delimiter or 
% the end of the string.  (If no more words are found, then
% just add remainder of string as the final token of the matrix.)

  curtok = strtok(instring,delims);
  if isempty(curtok),
    neqstring = [neqstring, instring];
    instring = '';
    
% If a word is found, then save any previous delimiter(s) 
% as a separate token.  
    
  else,
    begloc = strfind(instring,curtok);
    if begloc > 1,
      pretok = instring(1:(begloc-1));
      neqstring = [neqstring pretok];
    end;
    instring = instring((begloc+length(curtok)):length(instring));

% If word is the name of a model variable, then determine
% whether subsequent delimiter is a left-parenthesis corresponding 
% to the time index of the variable.  If so, then add time-suffix 
% to the token using _L or _F notation instead of parentheses; 
% otherwise, indicate contemporaneous variable with suffix _0 .

    ivar = strmatch(curtok,varcmat,'exact');
    if length(ivar),
      suffix = '';
      testtok = strtok(instring);
      if length(testtok),
        if testtok(1) == '(',
          rloc = strfind(instring,')');
          if length(rloc) == 0,
            error(['No matching parentheses - ',eqstring]);
          else
            indextok = instring(1:rloc);
            lnum = str2num(indextok);
            if isempty(lnum),
              error(['Invalid time index - ',eqstring]);
            elseif lnum < 0,
              suffix = ['_L',num2str(abs(lnum))];
              maxeqvlags(ivar) = max(abs(lnum),maxeqvlags(ivar));
            elseif lnum > 0,
              suffix = ['_F',num2str(lnum)];
              maxeqvleads(ivar) = max(lnum,maxeqvleads(ivar));
            end;
            instring = instring((rloc+1):length(instring));
          end;
        end;
      end;
      if length(suffix),
        eq_varincid{ivar} = unique([eq_varincid{ivar}, lnum]);
        curtok = [curtok suffix];
      else,
        eq_varincid{ivar} = unique([eq_varincid{ivar}, 0]);
        curtok = [curtok '_0'];
      end;
        
% If token is not a variable, then check whether it's the name of a shock,
% or the name of a parameter (in which case the double-underscore gets added)
    else
      ishk  = strmatch(curtok,shkcmat,'exact');
      iparm = strmatch(curtok,parcmat,'exact');
      if length(ishk),
        eq_shkincid(ishk) = 1;
      elseif length(iparm),
        curtok = [curtok '__'];
      end;
    end;
    
% Finally, add current token to output string

  neqstring = [neqstring curtok];
  end;
end;
