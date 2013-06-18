% Retun location of Dynare matlab on current matlab path
% (including directory delimitor at end of path)

function dyn_path = get_dynpath;

if ispc,
  ddelim = '\';
else,
  ddelim = '/';
end;

% Find dynare matlab in current path


pathmat = path;
dloc = findstr(pathmat,['dynare',ddelim,'matlab']);
if isempty(dloc),
  dloc = findstr(pathmat,['Dynare',ddelim,'matlab']);
end;
if isempty(dloc),
  error('Dynare matlab directory not found on current matlab path');
end;

% Find semicolon just prior to dloc, if any

semivec1 = findstr(pathmat(dloc:-1:1),';');
if isempty(semivec1),
  startloc = 1;
else,
  startloc = dloc + 2 - semivec1(1);
end;

% Find next semicolon after dloc, if any

semivec2 = findstr(pathmat(dloc:length(pathmat)),';');
if isempty(semivec2),
  endloc = length(pathmat);
else,
  endloc = dloc + semivec2(1) - 2;
end;

dyn_path = [pathmat(startloc:endloc),ddelim];