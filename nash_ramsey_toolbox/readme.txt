Note: What follows is the Levin notes on the get_ramsey.m program. Some extra things
to considered that are not mentioned before;

1) If your program has a "shocks" statement, comment out that whole block.
2) If your program does not have an "initval" block, just add
	initval;
	end;
to the appropriate place in the program (after the model block).

- Joe LaBriola, 2/25/13



% ===================================================================================
%
%  OVERVIEW
%
%  This program reads a Dynare model file (as specified by the string
%  variable "infilename" without the .MOD extension), generates the 
%  first-order conditions of the Ramsey policymaker, and writes out 
%  a new Dynare model (as specified by the string variable "outfilename"
%  without .MOD extension) and an M-file (outfilename_lmss.m) that 
%  provides a linear system for obtaining the numerical steady-state 
%  of the Lagrange multipliers.
%
%  (c) Andrew T. Levin 2005
%
%  Note: This program (and associated subroutines) may be used freely 
%  subject to acknowledgement of the source and citation of either or
%  both of the following papers (for which these routines were created):
%
%   Levin, A., Lopez-Salido, J.D., 2004.  "Optimal Monetary Policy with
%     Endogenous Capital Accumulation", manuscript, Federal Reserve Board.
%
%   Levin, A., Onatski, A., Williams, J., Williams, N., 2005. "Monetary 
%     Policy under Uncertainty in Microfounded Macroeconometric Models."
%     In: NBER Macroeconomics Annual 2005, Gertler, M., Rogoff, K., eds.
%     Cambridge, MA:  MIT Press.
% ===================================================================================
%
%  INSTRUCTIONS
%
%  To run this program, just do the following:
%
%  1. Create a plain-text file containing your model in dynare format.  (For a sample
%   model, see the file BestSW.mod that is included in this package.)  In addition 
%   to the standard dynare syntax rules, you'll need to add comment lines to indicate 
%   which groups of variables are endogenous vs. exogenous (that is, invariant to policy); 
%   this distinction is needed because we only want to differentiate the Lagrangian 
%   with respect to the endogenous variables.  Also, you need comments to indicate 
%   which equations are simple policy rules (one for each policy instrument).
%   Note that in the new model file created by get_ramsey, these simple rules are 
%   replaced by the set of first-order conditions that represent the Ramsey policy.  
%
%  2. In matlab, set the two string variables infilename (the name of the model file) 
%   and outfilename = 'xxx' (where xxx is the name of the new file that you're creating).
%
%  3. Now just run get_ramsey.m (which takes no explicit arguments).  
%
%  You will then need to parse the dynare file created by get_ramsey.
%  Now to evaluate the Ramsey policy, execute the following steps:
%
%  1. Solve for the steady state of the economy with a simple policy rule.
%
%  2. Run copy_steadystate (which creates the variables lmult*_SS)
%
%  3. Run xxx_lmss.m   (to generate initial guesses of the lagrange multipliers)
%
%  4. Run xxx.m        (the parsed dynare model file)
%
%  5. Run set_steadystate (which copies the steady state values into ys_)
%
%  6. Run the dynare routines:  steady, check, etc.
%         (note that getdr_ is a convenient means of obtaining the 2nd-order approximation 
%          without generating any intermediate output)
%             
%  7. If desired, use calc_welframsey to compute conditional expected welfare at the 
%     deterministic steady state.
%
%
% ===================================================================================
%
%  UPDATE HISTORY
%
%  10 August 2005:  first public release
%
%  17 September 2005: new version allows for multiple policy instruments
%                     also much faster for large models (now takes about 
%                                     one second per endogenous variable)
%
%  23 March 2006:  facilitates computation of steady states of the Lagrange multipliers
%                  (especially useful when the Ramsey steady-state inflation rate 
%                   is not known a priori) 
%
% ===================================================================================
