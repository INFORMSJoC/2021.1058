function [delta, probData] = linSolve3(soln, probData, RHS)
% This method implements a block solver for the Newton system.
% --------------------------------------------------------------------------
% USAGE of "linSolve3"
% delta = linSolve3(soln, probData, RHS)
% --------------------------------------------------------------------------
% INPUT
% soln:         current iterate
% probData:     data for the conic optimization problem
% RHS:          right-hand side of the Newton system
%
% OUTPUT
% delta:	computed Newton direction
% --------------------------------------------------------------------------
% EXTERNAL FUNCTIONS CALLED IN THIS FUNCTION
% None.
% --------------------------------------------------------------------------
       
    A = probData.A;
    b = probData.b;
    c = probData.c;
    [m, n] = size(A);
    
    if issparse(A) && issparse(soln.L)
        L = sparse(soln.L);
        b = sparse(b);
        c = sparse(c);
        RHS = sparse(RHS);
    else
        L = full(soln.L);
    end
    
    ry     = RHS(1:m);
    rx     = RHS(m+(1:n));
    rtau   = RHS(m+n+1);
    rs     = RHS(m+n+1+(1:n));
    rkappa = RHS(end);

    LiAt    = L\A';
    Lic     = L\c;
    AHic    = LiAt'*Lic;
    LHSdydtau   = [sparse(m,m), -b; b', soln.mu/soln.tau^2] + [LiAt'*LiAt, -AHic; -AHic', Lic'*Lic]/soln.mu;

% %     Hic     = L'\(L\c);
% %     HiAt    = -L'\(L\A');
% %     LHSdydtau   = [zeros(m,m), -b; b', soln.mu/soln.tau^2] - [A; -c']*[HiAt, Hic]/soln.mu;

    Hirxrs      = L'\(L\(rx+rs));
    RHSdydtau   = [ry; rtau+rkappa] - [A; -c']*Hirxrs/soln.mu;
    dydtau      = LHSdydtau\RHSdydtau;
    dx          = (Hirxrs + L'\([LiAt, -Lic]*dydtau))/soln.mu;
% %    dx          = (Hirxrs - [HiAt, Hic]*dydtau)/soln.mu;
    
    delta               = zeros(m+2*n+2, 1);
    delta(1:m)          = dydtau(1:m);
    delta(m+n+1)        = dydtau(m+1);
    delta(m+(1:n))      = dx;
    delta(m+n+1+(1:n))  = -rx - [A', -c]*dydtau;
    delta(end)          = -rtau + b'*dydtau(1:m) - c'*dx;
    
return
