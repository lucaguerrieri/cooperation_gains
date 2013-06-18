% If Ramsey policy, then compute conditional welfare 
% with all lagged lagrange multipliers set to zero

  nx =size(dr_.ghx,2);
  kk = find(dr_.kstate(:,2) <= ykmin_+1);
  klag = dr_.kstate(kk,[1 2]);
    
  ramadj = 0;
  idlmvec = strmatch('lmult',lgy_(dr_.order_var(klag(1:nx,1)),:));
  ilmvec = dr_.order_var(klag(idlmvec,1));
  nlmult = length(idlmvec);
  for ii=1:nlmult,
    idk = idlmvec(ii);
    ik = ilmvec(ii);
    ramadj = ramadj - dr_.ghx(idwelf,idk)*ys_(ik) ...
              + 0.5*dr_.ghxx(idwelf,(idk-1)*nx + idk)*ys_(ik)^2;
    for jdk=idlmvec',
      jk = dr_.order_var(klag(jdk,1));
      ramadj = ramadj + dr_.ghxx(idwelf,(idk-1)*nx + jdk)*ys_(ik)*ys_(jk);
    end;  
  end;  
  c_welf = c_welf + ramadj;
