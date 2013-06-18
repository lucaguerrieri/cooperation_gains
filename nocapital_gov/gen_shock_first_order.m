
clear
setpathdynare4

% modname below chooses model
% 
% modnam2 = 'open_economy_incompletemarkets_ramsey';
% modnam1 = 'open_economy_incompletemarkets';


modnam2 = 'open_economy_incompletemarkets_ramsey';
modnam1 = 'open_economy_incompletemarkets_nash_infl';
% 
% modnam2 = 'open_economy_completemarkets_ramsey';
% modnam1 = 'open_economy_completemarkets';

% 
% modnam2 = 'open_economy_completemarkets_ramsey';
% modnam1 = 'open_economy_completemarkets_nash_infl';

nperiods = 100;
shocks = [0,-.01,0,0,0,0];



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Model 1
% ! copy closed_economy_paramfile_baseline.m closed_economy_paramfile.m
% solve model
eval(['dynare ',modnam1,' noclearall'])
M1_ = M_;
oo1_ = oo_;
ys1 = oo1_.dr.ys;
nvars1 = size(M1_.endo_names,1);


eval(['dynare ',modnam2,' noclearall'])
M2_ = M_;
oo2_ = oo_;
ys2 = oo2_.dr.ys;
nvars2 = size(M2_.endo_names,1);

%% generate model IRFs

[zdata1] = makeirfsecondorder(M1_,oo1_,nperiods,shocks,1);
endo_names_reordered = M1_.endo_names(oo1_.dr.order_var,:);
for indxi = 1:nvars1
    eval([deblank(M1_.endo_names(indxi,:)),'_ss_1 = oo1_.dr.ys(indxi);']);
    eval([deblank(endo_names_reordered(indxi,:)),'_difference_1=zdata1(:,indxi);']);
end

[zdata2] = makeirfsecondorder(M2_,oo2_,nperiods,shocks,1);
endo_names_reordered = M2_.endo_names(oo2_.dr.order_var,:);

for indxi = 1:nvars2
    eval([deblank(M2_.endo_names(indxi,:)),'_ss_2 = oo2_.dr.ys(indxi);']);
    eval([deblank(endo_names_reordered(indxi,:)),'_difference_2=zdata2(:,indxi);']);
end

%%
% modify to plot IRFs (comparing two-country scenario)
titlelist = char('GDP, C1','GDP, C2','Labor, C1','Labor, C2','Consumption, C1','Consumption, C2','Welfare, C1','Welfare, C2');
percent = 'Percent';
ppt = 'P.Point';
ylabels = char(percent,percent,percent,percent,percent,percent,percent,percent);                          
figtitle = 'Response to Technology Shock in Country 1';

legendlist = cellstr(char('Nash','Cooperative'));
% legendlist = cellstr(char('Instrument Rule','Cooperative Ramsey'));
line1 = 100*[gdp_difference_1/gdp_ss_1,gdp2_difference_1/gdp2_ss_1,labor_difference_1/labor_ss_1,labor2_difference_1/labor2_ss_1,cc_difference_1/cc_ss_1,cc2_difference_1/cc2_ss_1,Welf1_difference_1,Welf2_difference_1/2];
line2 = 100*[gdp_difference_2/gdp_ss_2,gdp2_difference_2/gdp2_ss_2,labor_difference_2/labor_ss_2,labor2_difference_2/labor2_ss_2,cc_difference_2/cc_ss_2,cc2_difference_2/cc2_ss_2,Welf1_difference_2,Welf2_difference_2/2];
makechart(titlelist,legendlist,figtitle,ylabels, line1,line2);
