%add random noise to all images in directory


imagefiles = dir('*.png');      
nfiles = length(imagefiles);    % Number of files found
for ii=1:nfiles
   currentfilename = imagefiles(ii).name;
   currentimage = imread(currentfilename);
   noise = randi([-255, 255], rows, columns);
   output = currentimg + noise;
   imwrite(currentimage,currentfilename)
end

