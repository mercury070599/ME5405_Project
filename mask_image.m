function [img_fil]=mask_image(img,mask)

    % outputs an image given a mask of any size
    
    size_i1=size(img);
    size_m=size(mask);
    img=im2double(img);
    img_fil=zeros(size_i1(1)-size_m(1)+1,size_i1(2)-size_m(2)+1);
    
    for(i=1:size(img_fil,1))
        for(j=1:size(img_fil,2))
            img_fil(i,j)=correl(img(i:(i+size_m(1)-1),j:(j+size_m(2)-1)),mask);
        end
    end
    %img_fil=ceil(img_fil);
end