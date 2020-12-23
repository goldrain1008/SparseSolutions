function x=sparsify(x,k)
    [xsort ind]=sort(abs(x),'descend');
    % entries of abs(x) are listed in descending order, and each term has 
    % an indicator: the indicator of the largest entry is 1 and that of 
    % the smallest is k. 
    x(ind(k+1:end),1)=0;
    % Substitute zero to terms from the smallest to kth smallest term.
end 