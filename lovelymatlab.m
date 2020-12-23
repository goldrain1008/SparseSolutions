function success=lovelymatlab(k,m,n)
    xstar=rand([n 1]);
    xstar(randsample(1:n,n-k),1)=0;
    A=randn(m,n);
    b=A*xstar;
    x=zeros([n 1]); 
    i=0;
    B=pinv(A);
    while (i<500)
        xbar=x+B*(b-A*x);
        x=sparsify2(xbar,k); 
        % almost similar to sparsify but only this part is changed to
        % sparsiy2
        i=i+1;
    end
    xTilde=x;
    V=norm(xTilde-xstar)/norm(xstar);
    success=logical(V<10^-4); % same as alt_proj2
end