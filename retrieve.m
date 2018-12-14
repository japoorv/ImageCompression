function mat=retrieve(x2,num)
size(x2)
num=num;
for(i=1:size(x2,1)) 
 a2=x2(i,:,:);
 a2=a2(:);
 a=fft(a2);
 f1(i,:)=a;
 
end



fe=[];
                  for k=1:size(x2,1)  
                        t2=f1(k,:);
                        t3=t2(:);
                        t1=t3;
                      for(i=1:num-1)
                   
                          t1=cat(1,t1,t3);
                      end
                      N=length(t1);
                      t1(ceil(N/(2*num)):ceil(N-(N/(2*num))))=0;
                      fe(k,:,:)=t1;
                  end  
                    fe=num*fe(:,:);
       xf=[];  
       size(x2,2)*num
     for(i=1:size(x2,1))
         l=fe(i,:);
         l=l(:);
         size(l);
 xf(i,:,:)=uint8(reshape(ifft(l),[1 size(x2,2)*num 3]));
 
     end               
xf=uint8(xf(:,:,:));

 size(x2);
size(xf);
mat=real(xf);
end
