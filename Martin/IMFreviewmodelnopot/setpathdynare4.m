
restoredefaultpath;

martin = 0;

if martin
    
    home   = '/Applications/Dynare/4.3.3/matlab/';
    
    location = home;
    dir1 = [location];
    addpath(dir1)
    
    dir2=['./../plot_support_old'];
    addpath(dir2)
    
else
    
    dir1='/Applications/Dynare/4.3.3/matlab/';
    dir2='../../plot_support';
    dir3='../../nash_ramsey_toolbox';
    
    path(path,dir1);
    path(path,dir2);
    path(path,dir3);
    
    dynare_config
    
end

%restoredefaultpath
%
%% work = 'g:\ofs\research2\guerrieri\matlab';
%
%work = 'C:\Users\Martin\Policy';
%
%dir1=[work,'\Dynare\4.2.4\matlab'];
%dir2=['.\..\plot_support'];
%
%path(path,dir1);
%path(path,dir2);
%
%dynare_config

