%% Exercise 3.2
function Eonestep=one_step(k,m,n)
    xstar=rand([n 1]);
    % Generate a vector xstar with length n whose values are uniformly
    % distributed in [0 1].
    xstar(randsample(1:n,n-k),1)=0;
    %  Use randsample command to make n-k random entries zero. 
    A=randn(m,n);
    b=A*xstar; 
    xbar=pinv(A)*b;
    % Generate A and b and find xbar by using pinv.
    xTilde=sparsify(xbar,k); % Substitute xTilde for sparsified xbar
    Eonestep=norm(xTilde-xstar)/norm(xstar); % Find error 
end








