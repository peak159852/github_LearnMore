row = 256, col = 256;
img = rand(row, col);
figure(1);
subplot(1,2,1); imshow(img)
img2 = round(img);
subplot(1,2,2); imshow(img2)
