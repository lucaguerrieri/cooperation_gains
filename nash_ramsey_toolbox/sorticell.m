% Sort cell array (ignoring case) after removing extra blanks

function outcmat = sorticell(incmat);
tempmat = strrep(incmat,' ','');
[junk,irows] = sort(upper(tempmat));
outcmat = tempmat(irows);
