%% Project A Sparse solutions of linear equations




%% Exercise 3.1
type sparsify.m
x1=randn(20,1)
k=7;
x1sparse= sparsify(x1,k) 

% Hence the differece between x1 and sparsified x1 would be minimum

%% Exercise 3.2
type one_step.m

%% Exercise 3.3
Eonestep= one_step(30,200,400)

% One Step Sparsification prints out an error around half, which means the
% approximation by one_step.m is not that accurate.

%% Exercise 3.4
type alt_proj.m

%% Exercise 3.5
Ealtproj= alt_proj(30,200,400)

% the error is significantly smaller than One Step Algorithm when k=30.  

%% Exercise 3.6
type alt_proj2.m
success= alt_proj2(30,200,400)

% In Exercise 3.5 we got an error of Alternative Projection Algorithm
% smaller than 10^-4, so we can check this function operates properly.

%% Exercise 3.7
type drawaltproj2.m
m=linspace(10,200,20); % Generate domain
ym=zeros([1 20]); 
for i=1:length(m)
    ym(i)=drawaltproj2(m(i));
    % By this for loop I can get a vector with length 20 where each of its
    % entry is the output of drawaltproj2
end
plot(m,ym,'rx','linewidth',2);
xlabel('k');
ylabel('proportion of success');
title('proportion of success against k');
xlim([10 200])
ylim([0 100])
% From the graph below, we can check the recovery rate starts to rapidly  
% decrease from 100% at k=70. From k=120, y-value is zero, which means the 
% recovery is not that approximate.

%% Exercise 3.8
type sparsify2.m
x2=randn(20,1)
k=7;
x2sparse= sparsify2(x2,k)
% Then we get the sparsified vector whose entries are in [0 1].

%% Exercise 3.9
type lovelymatlab.m
type drawlovelymatlab.m
hold on % to draw both graphs on the same coordinates
n=linspace(10,200,20);
yn=zeros([1 20]);
for i=1:length(n) % same as Exercise 3.7
    yn(i)=drawlovelymatlab(n(i));
end
plot(n,yn,'k*','linewidth',2);
legend('Alternating Projection','lovelymatlab'); 
% From this graph we can observe recovery by lovelymatlab is better since
% it starts decreasing from the bigger k-value (k=90) than 
% Alternating Projection and becomes zero from larger k (k=140). So we can
% conclude there is an improvement in recovery performance by exploiting
% positivity ins sparsifying. 

