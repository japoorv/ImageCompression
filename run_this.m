clear;
for(num=2:7)

x2=imread('pic.jpg');
tt=compress(x2,num);
mat=decompress(tt,num);


for(i=1:size(x2,1)) 
 a2=x2(i,:,:);
 a2=a2(:);
 a=fft(a2);N=length(a);
 a(ceil(N/(2*num)):ceil(N-(N/(2*num))))=0;
 a=ifft(a);
 x2(i,:,:)=uint8(abs(reshape(a,[1 size(x2,2) 3])));
 
end
tt1=compress(x2,num); 
mat1=decompress(tt1,num);

f=figure();
subplot(2,3,1);
imshow(imread('pic.jpg'));title('Original Image');
subplot(2,3,4);
imshow(x2);title('Original Image(lowpass)');

subplot(2,3,2);
imshow(mat);title('Retrieved Image');

subplot(2,3,5);
imshow(mat1);title('Retrieved Image(lowpass)');


subplot(2,3,3);
imshow(tt);title('Compressed Image');
subplot(2,3,6);
imshow(tt1);title('Compressed Image(lowpass)');
fileName = ['sample_' num2str(num^2) '.jpg'];
    saveas(f,fileName);
fileName = ['sample_' num2str(num^2) '.fig']; 
saveas(f,fileName);
f=figure();
subplot(1,2,1);
imshow(tt);title('Compressed Image');

subplot(1,2,2);
imshow(mat1);title('Retrieved Image');
fileName = ['Comparison_' num2str(num^2) '.jpg'];
saveas(f,fileName);
fileName = ['Comparison_' num2str(num^2) '.fig'];
    saveas(f,fileName);
end
