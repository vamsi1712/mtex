function [x,y] = orthographicProj(theta,rho)
% stereographic projection
%% Input
%  theta, rho - double
%  v          - @vector3d
%% Output
%  x, y 

if nargin == 1, [theta,rho] = vec2sph(theta);end

ind = find(theta > pi/2+10^(-10));
theta(ind)  = pi - theta(ind);
rho(ind) = pi + rho(ind);

x = cos(rho) .* sin(theta);
y = sin(rho) .* sin(theta);
