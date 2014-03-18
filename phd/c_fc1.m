%weighting function for symmetric flow compensated gradient profile.
function retval = c_fc1(r, N)
    
    lb = min(1, max(0, (r - 1)./N));
    ub = min(1, r./N);
    
    retval = sqrt(36*sqrt(2) + 48) ...
        * (-ub.^2/2 + max(0, ub - 0.5 + sqrt(2)/4) .* (ub - 0.5 + sqrt(2)/4) ...
        - max(0, ub - 0.5) .* (ub - 0.5) + max(0, ub - 0.5 - sqrt(2)/4) .* (ub - 0.5 - sqrt(2)/4) ...
        + lb.^2/2 - max(0, lb - 0.5 + sqrt(2)/4) .* (lb - 0.5 + sqrt(2)/4) ...
        + max(0, lb - 0.5) .* (lb - 0.5) - max(0, lb - 0.5 - sqrt(2)/4) .* (lb - 0.5 - sqrt(2)/4));

end