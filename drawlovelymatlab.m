function w=drawlovelymatlab(k) % same as drawaltproj2
    i=0; y=0;
    while (i<100)
        y=y+lovelymatlab(k,200,400);
        i=i+1;
    end
    w=y;
end