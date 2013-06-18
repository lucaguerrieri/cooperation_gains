%location = 'home';
location = 'work';

restoredefaultpath


if strmatch(location,'home')    
    dir1='/users/jason/documents/matlab/dynare/4.1.0/matlab';
    dir2='/users/jason/documents/matlab/repcode/plot_support';
else
    %dir1='U:\TQS\luca\dynare4\4.2.4\matlab';
    %dir2='U:\TQS\luca\banking\repcode\plot_support';
    dir1='G:\ofs\research2\Guerrieri\Udrive\dynare4\4.2.4\matlab';
    dir2='..\plot_support';
    %dir3='G:\ofs\work_mpa\m1jml02\Ramsey\matlab\get_ramsey_toolbox';
    dir4='..\nash_ramsey_toolbox';
end

path(path,dir1);
path(path,dir2);

path(path,dir4);
%path(path,dir3);

dynare_config

