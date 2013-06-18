% =========================================================================
% Adjust leads and lags of eqstring by the increment ldif
% where ldif > 0 ==> move eqstring ldif periods ahead
% and ldif < 0 ==> move eqstring ldif periods back
%
% (c) Andrew T. Levin 2005
%
% Note: This program (and associated subroutines) may be used freely 
% subject to acknowledgement of the source and citation of either or
% both of the following papers (for which these routines were created):
%
%  Andrew T. Levin and J. David Lopez-Salido, 2004, "Optimal Monetary Policy 
%    with Endogenous Capital Accumulation", manuscript, Federal Reserve Board.
%
%  Levin, A., Onatski, A., Williams, J., Williams, N.  "Monetary Policy
%    under Uncertainty in Microfounded Macroeconometric Models."
%    In: NBER Macroeconomics Annual 2005, Gertler, M., Rogoff, K., eds.
%    Cambridge, MA:  MIT Press.
% =========================================================================

function neqstring = chgleadlag(ldif,eqstring,maxeqlag,maxeqlead);

if ldif > 0,
  neqstring = ['Lead',num2str(ldif),'_',eqstring];

  for ilead=maxeqlead:-1:1,  
    neqstring = strrep(neqstring,['_F',num2str(ilead)],['_F',num2str(ilead+ldif)]);
  end;

  neqstring = strrep(neqstring,'_0',['_F',num2str(ldif)]);

  for ilag=1:min(maxeqlag,(ldif-1)),
    neqstring = strrep(neqstring,['_L',num2str(ilag)],['_F',num2str(ldif-ilag)]);
  end;
 
  if maxeqlag >= ldif,
    neqstring = strrep(neqstring,['_L',num2str(ldif)],'_0');
    for ilag=(ldif+1):maxeqlag,
      neqstring = strrep(neqstring,['_L',num2str(ilag)],['_L',num2str(ilag-ldif)]);
    end;
  end;
  
elseif ldif < 0,
  ldif = abs(ldif);
  neqstring = ['Lag',num2str(ldif),'_',eqstring];

  for ilag=maxeqlag:-1:1,  
    neqstring = strrep(neqstring,['_L',num2str(ilag)],['_L',num2str(ilag+ldif)]);
  end;

  neqstring = strrep(neqstring,'_0',['_L',num2str(ldif)]);

  for ilead=1:min(maxeqlead,(ldif-1)),
    neqstring = strrep(neqstring,['_F',num2str(ilead)],['_L',num2str(ldif-ilead)]);
  end;
 
  if maxeqlead >= ldif,
    neqstring = strrep(neqstring,['_F',num2str(ldif)],'_0');
    for ilead=(ldif+1):maxeqlead,
      neqstring = strrep(neqstring,['_F',num2str(ilead)],['_F',num2str(ilead-ldif)]);
    end;
  end;
end;
