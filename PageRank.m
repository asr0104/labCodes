%  internet example: PageRank algorithm at its simplest
%use any size of matrix
% also first define the format long while running for decimal values
% 
% Samuli Siltanen March 2018

%% Construct adjancency matrix A
A = [...
    0 0 1 1/2;
    1/3 0 0 0;
    1/3 1/2 0 1/2;
    1/3 1/2 0 0;];

%% Solve the eigenvalue problem 
% Diagonal matrix D contains the eigenvalues of A in the diagonal.
% The columns of matrix V are the eigenvectors of A
[V,D] = eig(A);

% Eigenvalues of A are in this vector. The first
% one is the only real eigenvalue; that's what we need
evals = diag(D); 
eval1 = evals(1);

% Find proportionality constant alpha
alpha = 1/eval1;

% Find ranking vector r as the eigenvector corresponding to 
% the first eigenvalue
r = V(:,1);

% Normalize the ranking vector
r = r/sum(r);
