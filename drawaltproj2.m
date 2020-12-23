function v=drawaltproj2(k)
    i=0; y=0;
    % initially set y=0
    while (i<100) % the loop is repeated for 100 times.
        y=y+alt_proj2(k,200,400);
        % alt_proj2 prints 1 if the value of alt_proj is smaller than
        % 10^-4, 0 elsewhere, so 100 different results of alt_proj2 
        % are added.
        i=i+1;
    end
    v=y; % substitute v for resultant value of the algorithm.
end