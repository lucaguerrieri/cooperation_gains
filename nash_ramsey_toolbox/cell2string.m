% Takes cell array of character strings and converts to one-dimensional
% string, inserting the specified delimiter after every cell element
% Note that the delimiter can consist solely of blanks (unlike the 
% strcat function, which strips out all trailing blanks).  

function outstring = cell2string(carray,delimiter);

ncells = length(carray);
outstring = '';
for i=1:ncells,
   outstring = [outstring, deblank(char(carray(i))), delimiter];
end;
