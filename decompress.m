function x=decompress(oo,factor)
file=oo;
file=retrieve(oo,factor);
a1=file(:,:,1)';
a2=file(:,:,2)';
a3=file(:,:,3)';
file1(:,:,1)=a1;
file1(:,:,2)=a2;
file1(:,:,3)=a3;
file1=retrieve(file1,factor);
b1=file1(:,:,1)';
b2=file1(:,:,2)';
b3=file1(:,:,3)';
file2(:,:,1)=b1;
file2(:,:,2)=b2;
file2(:,:,3)=b3;
x=file2;
end