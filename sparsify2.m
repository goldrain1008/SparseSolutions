function x=sparsify2(x,k)
    [xsort ind]=sort(x,'descend');
    % Similarly to sparsify, I first used sort function to order x, but in
    % this time, I listed x, not abs(x) 
    x(ind(k+1:end),1)=0; 
    % Then I substituted zeros to the smallest to kth smallest term.
    % So most of negative terms would be zero by this process.
    for i=1:length(x)
        % However, there would be some remaining negative terms in x,so
        % substitute zero to them by using conditionals. 
        if (x(i)<0)
            x(i)=0; 
        elseif (x(i)>1)
        % Also there would be some terms bigger than 1 in x, so substitute
        % 1 to them to make term-by-term difference smallest.
            x(i)=1;
        end
    end         
end 