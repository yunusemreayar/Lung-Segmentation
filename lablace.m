for k = 1:672
    disp('Tamamland�.')
    inputFilename = sprintf('%d.png',k);
    inputFolder   = ' C:\Users\yunus\OneDrive\Masa�st�\tez\emre334 \';
    image=imread(fullfile(inputFolder,inputFilename));
filter=[0 -1 0 ; -1 5 -1 ; 0 -1 0];
[rows,cols] = size(image);
outputimage = zeros(rows,cols);
filtered_3x3 = imfilter(image,filter,'replicate');
outputimage = im2uint8(filtered_3x3);
fName = [' C:\Users\yunus\OneDrive\Masa�st�\tez\emre335 \',num2str(k),'.png'];
   imwrite(outputimage,fName, 'png');
end
disp('��lem bitti')

