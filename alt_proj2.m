function success=alt_proj2(k,m,n)
    success=logical(alt_proj(k,m,n)<10^-4);
    % The logical commands outputs 1 if the statement is true and 
    % 0 elsewhere
end

