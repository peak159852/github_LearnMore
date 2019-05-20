clc;
A = imread('logo.jpg');   % ��� â�� whos A 
figure(1); subplot(2,3,1); imshow(A); % subplot �׸� ������ ��â��
B = rgb2gray(A);
subplot(2,3,2); imshow(B)
subplot(2,3,3); mesh(B)
C = B;
C(10:30, 10:30) = 256;
subplot(2,3,4); imshow(C)

% noise
AN = imnoise(A,'salt & pepper', 0.1);
subplot(2,3,5); imshow(AN)
subplot(2,3,6); mesh(rgb2gray(AN))
BE = edge(B, 'canny', [], 1);   % gray�÷��� ����
figure(7); imshow(AE)