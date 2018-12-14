function a=compress(x,factor)
filename=x;

a1=x(:,:,1);
a2=x(:,:,2);
a3=x(:,:,3);
a1=downsample(a1,factor);
a1=downsample(a1',factor);
a1=a1';
a2=downsample(a2,factor);
a2=downsample(a2',factor);
a2=a2';
a3=downsample(a3,factor);
a3=downsample(a3',factor);
a3=a3';
finale(:,:,1)=a1;
finale(:,:,2)=a2;
finale(:,:,3)=a3;
imshow(finale);
a=finale;
end