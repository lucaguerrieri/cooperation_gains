  global ys_ lgy_

  disp(' ')
  disp('STEADY-STATE RESULTS:')
  disp(' ')
  for i=1:size(ys_,1)
    disp(sprintf('%s \t\t %16.8g',lgy_(i,:),ys_(i)));
  end
