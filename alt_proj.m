%% Exercise 3.4
function Ealtproj=alt_proj(k,m,n)
    % First part is similar to One Step Sparsification
    xstar=rand([n 1]); 
    xstar(randsample(1:n,n-k),1)=0; 
    A=randn(m,n); 
    b=A*xstar; 
    x=zeros([n 1]); 
    i=0; % Set initial value of i which would be used in while loop
    B=pinv(A); 
    % Calculating pseudoinverse in while loop takes so long, so I  
    % just defined it at this point
    while (i<500) % iteration repeats for 500 times
        xbar=x+B*(b-A*x); 
        % first calculate xbar with the initial x, which is an zero vector.
        x=sparsify(xbar,k);
        % sparsify xbar and substitute it to x
        i=i+1; % Iterated with altered xbar and x
    end
    xTilde=x; % Substitute xTilde for resultant x
    Ealtproj=norm(xTilde-xstar)/norm(xstar); % Find error
end
        
