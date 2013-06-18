%% Program: replace_big_lags_leads.m
%% Author: Joe LaBriola
%% Replace all lags and leads of magnitude >1, and overwrite.

math_delimiters = '[+\-()*/ ]';
num_new_vars = 0;
new_vars = '';
forward_text = '_fwd';
backwards_text = '_bwd';
big_lag_or_lead = 0;

%% Finds if the .mod file needs to be modified.

fin = fopen([outfilename,'.mod'],'r');

while ~feof(fin)
    s = fgets(fin);    
    double_lead_pos = strfind(s,'(+2)');
    double_lag_pos = strfind(s,'(-2)');
    if (~isempty(double_lead_pos) || ~isempty(double_lag_pos)),
        big_lag_or_lead = 1;
        break;
    end;    
end;

%% If there are lags or leads > 2 periods, then modify file.

if big_lag_or_lead,

fin = fopen([outfilename,'.mod'],'r');
fout = fopen([outfilename,'_v2.mod'],'w');

while ~feof(fin)
    s = fgets(fin);
    
    double_lead_pos = strfind(s,'(+2)');
    num_leads = length(double_lead_pos);
    
    while num_leads > 0, 
        var_length = regexp(fliplr(s(1:double_lead_pos(1)-1)),math_delimiters);
        var_name = s(double_lead_pos(1)-var_length+1:double_lead_pos(1)-1);
        new_var_name = cat(2,var_name,forward_text);
        new_vars = strvcat(new_vars,new_var_name);
        s = strcat(s(1:double_lead_pos(1)-var_length),new_var_name,'(+1)',s(double_lead_pos(1)+4:length(s)));
        double_lead_pos = strfind(s,'(+2)');
        num_leads = length(double_lead_pos);
    end;
    
    double_lag_pos = strfind(s,'(-2)');
    num_lags = length(double_lag_pos);
    
    while num_lags > 0,
        var_length = regexp(fliplr(s(1:double_lag_pos(1)-1)),math_delimiters);
        var_name = s(double_lag_pos(1)-var_length+1:double_lag_pos(1)-1);
        new_var_name = cat(2,var_name,backwards_text);        
        new_vars = strvcat(new_vars,new_var_name);
        s = strcat(s(1:double_lag_pos(1)-var_length),new_var_name,'(-1)',s(double_lag_pos(1)+4:length(s)));
        double_lag_pos = strfind(s,'(-2)');
        num_lags = length(double_lag_pos);
    end;
        
    fprintf(fout,'%s',s);    
end;

new_vars = unique(new_vars,'rows');
num_new_vars = size(new_vars,1);


fclose(fin);
fclose(fout);

%% Adding newly created variables to .mod file.

add_variables_trigger = 0;
add_parameters_trigger = 0;
model_trigger = 0;
f2in = fopen([outfilename,'_v2.mod'],'r');
f2out = fopen([outfilename,'_v2_temp.mod'],'w');

while ~feof(f2in),    
    s = strtrim(fgets(f2in));
    % If we come across the line that declares variables, we add the new
    % variables after.
    if add_variables_trigger == 0;
       if strncmpi(s,'var ',4),
          add_variables_trigger = 1;
          new_line = 'var ';
          end_line = s(5:length(s));
          for i = 1:num_new_vars,
            new_line = [new_line, strtrim(new_vars(i,:)), ', '];
          end;
          new_line = [new_line, end_line];
          fprintf(f2out,'%s',new_line);
          fprintf(f2out,'\n');
       else,
          fprintf(f2out,'%s',s);
          fprintf(f2out,'\n');           
       end;        
    % If we come across the line that declares parameters, we add the
    % steady-state values of the parameters after.   
    elseif add_parameters_trigger == 0,
       if strncmpi(s,'parameters ',11),
          add_parameters_trigger = 1;
          new_line = 'parameters ';
          end_line = s(12:length(s));
          for i = 1:num_new_vars,
            new_line = [new_line, strtrim(new_vars(i,:)), '_ss, '];
          end;
          new_line = [new_line, end_line];
          fprintf(f2out,'%s',new_line);
          fprintf(f2out,'\n');
       else
          fprintf(f2out,'%s',s);
          fprintf(f2out,'\n');
       end;
    % If we came across the 'model;' declaration, we add the equations that
    % declare the new variables to be time leads or lags of the old ones.
    elseif model_trigger == 0,
       if strncmpi(s,'model;',6),
           fprintf(f2out,'%s',s);
           fprintf(f2out,'\n');
           for i = 1:num_new_vars,
            var = strtrim(new_vars(i,:));
            if regexp(var,forward_text),
               fprintf(f2out,'%s',strcat(var,' = ',var(1:length(var)-4),'(+1);'));
               fprintf(f2out,'\n');
            elseif regexp(var,backwards_text),
               fprintf(f2out,'%s',strcat(var,' = ',var(1:length(var)-4),'(-1);')); 
               fprintf(f2out,'\n');
            end;
           end;
       else,
          fprintf(f2out,'%s',s);
          fprintf(f2out,'\n');
       end;
    else
        fprintf(f2out,'%s',s);
        fprintf(f2out,'\n');
    end; 
end;    


fclose(f2out);

cmd = ['! copy ', outfilename,'_v2_temp.mod  ', outfilename,'_v2.mod'];
eval(cmd);
%% Add steady state definitions to _paramfile.m.
% 
% f3in = fopen([outfilename,'_paramfile.m'],'r');
% f3out = fopen([outfilename,'_v2_paramfile.m'],'w');
% 
% while ~feof(f3in),
%     fprintf(f3out,'%s',fgets(f3in));
% end;
% 
% for i = 1:num_new_vars,
%     fprintf(f3out,'\n');
%     fprintf(f3out,'%s',strcat(var,'_ss = ',var(1:length(var)-4)),';');
% end;
% 
% fclose(f3in);
% fclose(f3out);    


f3in = fopen([outfilename,'_steadystate.m'],'r');
f3out = fopen([outfilename,'_v2_steadystate.m'],'w');

while ~feof(f3in),    
    s = fgets(f3in);
    if strfind(s,'_paramfile') > 0,
        fprintf(f3out,'%s',s);
        for i = 1:num_new_vars,
            var = strtrim(new_vars(i,:));
            fprintf(f3out,'%s',strcat(var,'_ss = ',var(1:length(var)-4)),'_ss;');
            fprintf(f3out,'\n');
        end;
    elseif strfind(s,'_ss_defs') > 0,
        fprintf(f3out,'%s',s);
        for i = 1:num_new_vars,
            var = strtrim(new_vars(i,:));
            fprintf(f3out,'%s',strcat(var,' = ',var,'_ss;'));
            fprintf(f3out,'\n');
        end;
    else,
        fprintf(f3out,'%s',s);
    end;
end;
        

cmd = ['! copy ', outfilename,'_v2.mod  ', outfilename,'.mod'];
eval(cmd);

cmd = ['! copy ', outfilename,'_v2_steadystate.m  ', outfilename,'_steadystate.m'];
eval(cmd);

fclose('all');

new_modnam = strcat(outfilename,'_v2.mod');
new_modnam2 = strcat(outfilename,'_v2_temp.mod');
new_ss = strcat(outfilename,'_v2_steadystate.m');

delete(new_modnam, new_modnam2, new_ss);

end;



