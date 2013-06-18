% Runs Dynare parser with string argument fname (for which the .MOD extension is optional),
% and strips out undesired commands from the main output file

% Assumes that set_dynpath has been run

function dynparse(fname)

exclude_list = {'clear all';'options_ = []';'diary'};
nexcl = length(exclude_list);

if ~ isstr(fname)
	error ('The argument in DYNARE must be a text string.') ;
end

flen = length(fname);

% Drop off .MOD extension if included
if flen > 4,
  if strcmpi(fname((flen-3):flen),'.MOD'),
    fname = fname(1:(flen-4));
  end;
end;

% Delete old parsed output files if any

if exist(fname) == 2,
  delete([fname,'.m']);
end;
if exist([fname,'_ff']) == 2,
  delete([fname,'_ff.m']);
end;
if exist([fname,'_fff']) == 2,
  delete([fname,'_fff.m']);
end;

% Call dynare_m.exe to parse file, and display error if no output file created

command = [get_dynpath,'dynare_m ',fname] ;
dos (command) ;

mainfname = [fname,'.m'];
if exist(mainfname) ~= 2,
  error('Dynare parser failed; please check and rerun');
end;  

% Strip out undesired statements from main output file

filemat = textread(mainfname,'%s','delimiter','\n','whitespace','');

for ix = 1:nexcl,
  ex_string = char(exclude_list(ix));
  exvec = strmatch(ex_string,char(filemat));
  filemat = filemat(setdiff(1:length(filemat), exvec));
end;

mainfid = fopen(mainfname,'w');
for iline=1:length(filemat),
  linestring = deblank(char(filemat(iline)));
  fprintf(mainfid,'%s \n',linestring);
end;
fclose(mainfid);
