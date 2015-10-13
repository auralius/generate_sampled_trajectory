function output = traj_gen(from, to, completion_time, Ts)
% Evenly sampled two position coordinates with period of Ts and a defined 
% completion time.
% from and to are row vector of nx1
% from = [p1 p2 p3 ... pn]
% to = [q1 q2 q3 ... qn]

p = size(from, 2);
q = size(to, 2);

if p~=q
    disp('Dimension error')
    output = 0;
    return;   
end

dx = (to - from) / completion_time * Ts;
t = 0:Ts:completion_time;

n = length(t);
for i = 0 : n-1
    output(i+1, :) = from+dx.*i;    
end

end