%Setting up files for optimal policy problems
%
% In infilename, perfrom the following changes
% 1. Add definition of Util and Welf or Util1, Util2, Welf1, Welf2 with the
% necessary parameter definitions in a "Monetary Policy bloc"
% 2. If habits are in the model, create an auxiliary variable for lagged
% consumption in the definitions of Util
% 3. Define interst rates as rate, rate1 and rate2, respectively. You need
% to state the olicy rules as
%
% // Policy Rule, country 1
% // Policy Rule, country 2
% This definition may be case sensitive.
%
% 4. Sort exogenous variables and endogenous variables into their own blocs
% Write it as: 
%
% // Exogenous variables 
% var
%
% and 
%
% // Exogenous variables 
% var
%
% In model bloc collect equations setting the exgenous variables under 
% 
% //Exogenous shocks
%
% 5. Comment out shock bloc.
%
% 6. Add defitions of steady state values for new variables and new
% parameters in the steady state and parameter files.
%
% 7. Insert *_ss_defs file into the steady state file.
%
% 8. Add steady states values for variables previously not defined. In
% particular be careful if model variables are in logs. 
%
% c1clag = c1c; 
% c2clag = c2c; 
% Util1 = 1/exp(c1muc)*log(exp(c1muc)*exp(c1c)-c1vkappa/c1grmuzss*exp(c1clag))+c1chi0/(1-c1chi)*(1-exp(c1l))^(1-c1chi); 
% Welf1 = Util1/(1-nbeta); 
% Util2 = 1/exp(c2muc)*log(exp(c2muc)*exp(c2c)-c2vkappa/c2grmuzss*exp(c2clag))+c2chi0/(1-c2chi)*(1-exp(c2l))^(1-c2chi); 
% Welf2 = Util2/(1-nbeta); 
% Util = omega_welf1*Util1 + omega_welf2*Util2; 
% Welf = Util/(1-nbeta); 
% rate1 = c1rs; 
% rate2 = c2rs; 
%
% nvars = M_.endo_nbr;
% for i_indx = 1:nvars
%    varstring = deblank(M_.endo_names(i_indx,:)); 
%    if isempty(strfind(varstring,'mult')) & isempty(strfind(varstring,'AUX'))
%        eval([varstring,'_ss = ',deblank(varstring),';']);
%    end   
% end
% nonlinearnopotv2_ramsey_ss_defs
%
% 9. Model should be written in companion form.


restoredefaultpath    
clear all

dir1=['./../nash_ramsey_toolbox_old'];
addpath(dir1)

switchmodel = 0

if switchmodel == 0
    %Creating model with Ramsey planner (Coordination)

    infilename = 'nonlinearnopotcomp'
    outfilename = 'nonlinearnopotcomp_ramsey'

    get_ramsey;
    make_ss;
    replace_big_lags_leads;
end

if switchmodel == 1
    %Creating model with Ramsey planner (Coordination)

    infilename = 'nonlinearnopot'
    outfilename = 'nonlinearnopot_ramsey'

    get_ramsey;
    make_ss;
    replace_big_lags_leads;
end

if switchmodel == 2
    %Creating model with Nash competition

    infilename = 'nonlinearnopot'
    outfilename = 'nonlinearnopot_nash'

    two_country_ramsey;
    make_ss_nash;
    replace_big_lags_leads;
end

if switchmodel == 3
    %Creating model with Nash competition

    infilename = 'nonlinearnopotcomp'
    outfilename = 'nonlinearnopotcomp_nash'

    two_country_ramsey;
    make_ss_nash;
    replace_big_lags_leads;
end