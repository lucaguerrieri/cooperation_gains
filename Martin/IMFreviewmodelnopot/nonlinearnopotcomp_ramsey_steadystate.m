function [ys,check] = nonlinear_steadystate(junk,ys)

global M_ params paramlist param_switch sensitivity_switch paramfile_name

% import parameters
%nparams = size(M_.param_names,1);
%for icount = 1:nparams
%    if ~isnan(M_.params(icount))
%        eval([M_.param_names(icount,:),'=M_.params(icount);'])
%    end
%end

check = 0;

if sensitivity_switch
eval(paramfile_name);
else
paramfile_assembledreduced
end

% change country 1 parameters 
% without changing country 2 parameters if 
% block of code is inserted after def_parm_assembled
if param_switch
    nparams = length(params);
    
    % update parameters in M_
    for i=1:nparams
        eval([paramlist(i,:),'=params(i);'])
    end
end


def_parm_assembledreduced;

steadyoilmodJRstickycombodynarenonlinear_c1
steadyoilmodJRstickycombodynarenonlinear_c2
assignsteadyoilmodJRstickycombodynarenonlinear

params_policy;

% export parameters
nparams = size(M_.param_names,1);
for icount = 1:nparams
    eval(['M_.params(icount) = ',M_.param_names(icount,:),';'])
end

c1lambdaq = log(c1lambdaqss);
c1q = log(c1qss);
c1i = log(c1iss);
c1k = log(c1kss);
c1c = log(c1css);
c1cne = log(c1cness);
c1cd = log(c1cdss);
c1mc = log(c1mcss);
c1oc = log(c1ocss);
c1id = log(c1idss);
c1rpipd = log(c1rpipdss);
c1mi = log(c1miss);
c1v = log(c1vss);
c1y = log(c1yss);
c1rk = log(c1rkss);
c1l = log(c1lss);
c1o = log(c1oss);
c1rrs = c1rrsss;
c1m = log(c1mss);
c1tbal = c1tbalss;
c1gtbal = c1gtbalss;
c1g = log(c1gss);
c1shockgy = c1shockgyss;
c1op = log(c1opss);
c1os = log(c1osss);
c1ow = log(c1owss);
c1rpopd = log(c1rpopdss);
c1oi = log(c1oiss);
c1zc = c1zcss;
c1zclag = c1zclagss;
c1zi = c1ziss;
c1yo = c1yoss;
c1lagyo = c1lagyoss;
c1muoc = c1muocss;
c1lagmuoc = c1lagmuocss;
c1muc = c1mucss;
c1omegacm = c1omegacmss;
c1lagomegacm = c1lagomegacmss;
c1omegaim = c1omegaimss;
c2lambdaq = log(c2lambdaqss);
c2q = log(c2qss);
c2i = log(c2iss);
c2k = log(c2kss);
c2c = log(c2css);
c2cne = log(c2cness);
c2cd = log(c2cdss);
c2mc = log(c2mcss);
c2oc = log(c2ocss);
c2id = log(c2idss);
c2rpipd = log(c2rpipdss);
c2mi = log(c2miss);
c2v = log(c2vss);
c2y = log(c2yss);
c2rk = log(c2rkss);
c2l = log(c2lss);
c2o = log(c2oss);
c2rrs = c2rrsss;
c2m = log(c2mss);
c2tbal = c2tbalss;
c2gtbal = c2gtbalss;
c2g = log(c2gss);
c2shockgy = c2shockgyss;
c2op = log(c2opss);
c2os = log(c2osss);
c2ow = log(c2owss);
c2rpopd = log(c2rpopdss);
c2oi = log(c2oiss);
c2zc = c2zcss;
c2zclag = c2zclagss;
c2zi = c2ziss;
c2yo = c2yoss;
c2lagyo = c2lagyoss;
c2muoc = c2muocss;
c2lagmuoc = c2lagmuocss;
c2muc = c2mucss;
c2omegacm = c2omegacmss;
c2lagomegacm = c2lagomegacmss;
c2omegaim = c2omegaimss;
c1rer = log(c1rerss);
c2rpwopd = log(c2rpwopdss);
c1rpwopd = log(c1rpwopdss);
c1b = c1bss;
c1rpmcpd = log(c1rpmcpdss);
c2rpmcpd = log(c2rpmcpdss);
c1z = c1zss;
c2z = c2zss;
c1zw = c1zwss;
c1zwlag = c1zwlagss;
c1muo = c1muoss;
c2muo = c2muoss;
c1muow = c1muowss;
c1muowlag = c1muowlagss;
c1rpmipd = log(c1rpmipdss);
c1x = log(c1xss);
c2rpmipd = log(c2rpmipdss);
c2x = log(c2xss);
c2w = log(c2wss);
c1w = log(c1wss);
c2oy = log(c2oyss);
c1oy = log(c1oyss);
c2thetapvar = c2thetapvarss;
c1thetapvar = c1thetapvarss;
c2wdes = log(c2wdesss);
c1wdes = log(c1wdesss);
c2thetawvar = c2thetawvarss;
c1thetawvar = c1thetawvarss;

c2rmcpd = log(c2rmcpdss);
c1rmcpd = log(c1rmcpdss);
c2rpcpd = log(c2rpcpdss);
c1rpcpd = log(c1rpcpdss);
c2dpd = c2dpdss;
c1dpd = c1dpdss;


c2dcore = log(c2pistar);
c1dcore = log(c1pistar);
c1dhead = log(c1pistar);
c1dpwo = log(c1grmuzoss)+log(c1pistar);
c2rpnepd = log(c2rmcpdss);
c1rpnepd = log(c1rmcpdss);

c1rs = c1rsss;
c2rs = c2rsss;
c1pitar = c1pitarss;
c2pitar = c2pitarss;

c1hw = log((1+c1thetaw)/c1thetaw*c1lss/(1-c1xiw*c1beta));
c1gw = log((1+c1tauw)/c1thetaw*c1lss/(1-c1xiw*c1beta));
c1wstar = log(c1wss);
c1omegabar = c1pistar*c1grmuzss;
c1omega = c1pistar*c1grmuzss;

c2hw = log((1+c2thetaw)/c2thetaw*c2lss/(1-c2xiw*c2beta));
c2gw = log((1+c2tauw)/c2thetaw*c2lss/(1-c2xiw*c2beta));
c2wstar = log(c2wss);
c2omegabar = c2pistar*c2grmuzss;
c2omega = c2pistar*c2grmuzss;

c1hp = log(((1+c1thetap)/c1thetap*(c1rmcpdss)*(c1yss)/(1-c1xip*c1beta)));
c1gp = log(((1+c1taup)/c1thetap*(c1yss)/(1-c1xip*c1beta)));
c1pid = c1pistar;
c1pstar = log(1);
c1pidbar = c1pistar;

c2hp = log(((1+c2thetap)/c2thetap*(c2rmcpdss)*(c2yss)/(1-c2xip*c2beta)));
c2gp = log(((1+c2taup)/c2thetap*(c2yss)/(1-c2xip*c2beta)));
c2pid = c2pistar;
c2pstar = log(1);
c2pidbar = c2pistar;

c1yd = log(c1yss);
c2yd = log(c2yss);
c1deltad = 0;
c2deltad = 0;

%rate1 = c1rs;
%rate2 = c2rs;
rate1 = c1dpd;
rate2 = c2dpd;
c1clag = c1c; 
c2clag = c2c; 
c1blag = c1b; 
c1ydlead = c1yd; 
c1rerlead = c1rer; 
c1rpcpdlead = c1rpcpd; 
c2rpcpdlead = c2rpcpd; 
c1qlead = c1q; 
c2qlead = c2q; 
c1pidlead = c1pid; 
c2pidlead = c2pid; 
c1rpipdlead = c1rpipd; 
c2rpipdlead = c2rpipd; 
c1lambdaqlead = c1lambdaq; 
c2lambdaqlead = c2lambdaq; 
c1rklead = c1rk; 
c2rklead = c2rk; 
c1dpdlead = c1dpd; 
c2dpdlead = c2dpd; 
c1hplead = c1hp; 
c2hplead = c2hp; 
c1gplead = c1gp; 
c2gplead = c2gp; 
c1omegalead = c1omega; 
c2omegalead = c2omega; 
c1hwlead = c1hw; 
c2hwlead = c2hw; 
c1gwlead = c1gw; 
c2gwlead = c2gw; 


Util1 = 1/exp(c1muc)*log(exp(c1muc)*exp(c1c)-c1vkappa/c1grmuzss*exp(c1c))+c1chi0/(1-c1chi)*(1-exp(c1l))^(1-c1chi); 
Welf1 = Util1/(1-nbeta); 
Util2 = 1/exp(c2muc)*log(exp(c2muc)*exp(c2c)-c2vkappa/c2grmuzss*exp(c2c))+c2chi0/(1-c2chi)*(1-exp(c2l))^(1-c2chi); 
Welf2 = Util2/(1-nbeta); 
Util = omega_welf1*Util1 + omega_welf2*Util2; 
Welf = Util/(1-nbeta); 

nvars = M_.endo_nbr;

for i_indx = 1:nvars
   varstring = deblank(M_.endo_names(i_indx,:)); 
   if isempty(strfind(varstring,'mult')) & isempty(strfind(varstring,'AUX'))
       eval([varstring,'_ss = ',deblank(varstring),';']);
   end   
end
nonlinearnopotcomp_ramsey_ss_defs

nvars = M_.endo_nbr;
ys = zeros(nvars,1);
for i_indx = 1:nvars
   eval(['ys(i_indx)=',M_.endo_names(i_indx,:),';']) 
end