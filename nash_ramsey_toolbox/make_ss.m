%% Create the new _steadystate.m file.
% % Replacing all instances of infilename with outfilename.
% 
% fin = fopen([infilename,'_steadystate.m'],'r');
% fout = fopen([outfilename,'_steadystate.m'],'w');
% 
% cmd = ['! copy ', infilename,'_paramfile.m ', outfilename,'_paramfile.m'];
% eval(cmd);
% 
% while ~feof(fin)
%     s = fgets(fin);
%     s = strrep(s,infilename,outfilename);
%     fprintf(fout,'%s',s);
% end;
% 
% fclose(fin);
% fclose(fout);

%% Create the new _ss_defs.f file.
% Copying over the old file into the new filename.
cmd = ['! copy ',infilename,'_ss_defs.m ', outfilename,'_ss_defs.m'];
eval(cmd);

fid=fopen([outfilename,'_ss_defs.m'],'a');
fprintf(fid,'\n');
%%
% Writing the line that will run the program to find the steady-state
% values for the Lagrangian multipliers.
fprintf(fid,'%s \n',[outfilename,'_lmss;']);

% Assigning the guesses to the Lagrangian multipliers.
for iindx =1:nbehaveqs
    
    out_s  = ['lmult',num2str(iindx),'=lmss_vals(',num2str(iindx),');'];
    fprintf(fid,'%s \n',out_s);
end

fclose(fid);