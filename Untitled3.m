% Heat Equation 1D - FDM (Explict Method)
clear all; clf; clc;
A = imread('logo.jpg');
B = rgb2gray(A); B = imnoise(B,'salt & pepper', 0.3);
[Nx, Ny] = size(B);
x = linspace(1, Nx, Nx); y = linspace(1, Ny, Ny); % space grid
dx = x(2) - x(1); dy = y(2) - y(1);
dt = 0.02*dx^2; T = 10*dt; Nt = round(T/dt);
u = B;
figure(1); subplot(1,2,1); mesh(x, y, u'); view(90,90); axis image
subplot(1,2,2); imshow(u);
nu=u;
for n =1:Nt
    for i = 2:Nx-1
        for j = 2:Ny-1
            nu(i,j) = u(i,j) + dt*( u(i+1,j) - 2*u(i,j) + u(i-1,j) )/(dx^2) ...
                + dt*(u(i,j+1) - 2*u(i,j) + u(i,j-1) )/(dy^2);
        end
    end
    figure(2); subplot(1,2,1); mesh(x,y,nu'); view(90,90); axis image
    subplot(1,2,2); imshow(nu);
    
    pause(0.2)
    u = nu;
end



