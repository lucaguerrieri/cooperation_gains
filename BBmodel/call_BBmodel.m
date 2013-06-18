clear
clear global

global paramlist params param_switch
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run model
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
restoredefaultpath

setpathdynare4

dynare BBmodel
%dynare BBmodel_ramsey
lgx_ = M_.exo_names;
lgy_ = M_.endo_names;
dr_ = oo_.dr;
ys_ = oo_.dr.ys;
save BBmodelsolution lgx_ lgy_ dr_ ys_

dynare open_economy_incompletemarkets
lgx_ = M_.exo_names;
lgy_ = M_.endo_names;
dr_ = oo_.dr;
ys_ = oo_.dr.ys;
save LJmodelsolution lgx_ lgy_ dr_ ys_
%evaluate_static_model(oo_.steady_state,oo_.exo_steady_state,M_.params,M_,options_)


%%
clear lgx_ lgy_ dr_ ys_

for switchmod = 1:2

    if switchmod == 1
        load BBmodelsolution
        % plot impulse responses
        shock = zeros(size(lgx_,1),1);
        for ishock = 2 %6:length(shock)
            shock(ishock) = 0.01;

            nperiods = 20;
            dset = 'f1';        
            makeirf

        end

    else
        load LJmodelsolution
        % plot impulse responses
        shock = zeros(size(lgx_,1),1);
        for ishock = 2 
            shock(ishock) = 0.01;

            nperiods = 20;
            dset = 'f2';        
            makeirf

        end
    end

end
      
percent = 'Percent';
ppt = 'Percentage Point';

titlelist = char('Gross Output','Consumption domestic good','Foreign Output','(Product) Real Exchange Rate','Inflation','Labor');
ylabels = char(percent, percent, percent, percent, percent, percent);
legendlist = char('BB','LJ');
figlabel = 'Home technology shock';

makechart(titlelist,legendlist,figlabel,ylabels,...
          100*[f1_c1y_irf       , f1_c1mc_irf        , f1_c2y_irf         , f1_c1rerprod_irf           ,f1_c1dpd_irf,f1_c1l_irf],...
          100*[f2_gdp_irf/f2_gdp, f2_cc_m_irf/f2_cc_m, f2_gdp2_irf/f2_gdp2, f2_r_exchg_irf,f2_infl_irf ,f2_labor_irf/f2_labor]);
    