function idnum = idvar(varname);

global endog_;
idnum = strmatch(varname,cellstr(endog_),'exact');
