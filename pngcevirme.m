%png ye %png ye çevirme
for k = 1:672
    disp('Tamamlandý.')
    if k<10
     inputFilename = sprintf('1.3.12.2.1107.5.1.4.75599.30000019070106482124700035955-I0000%d.dcm',k);
    
    elseif k<100
     inputFilename = sprintf('1.3.12.2.1107.5.1.4.75599.30000019070106482124700035955-I000%d.dcm',k);
    
    elseif k<673
     inputFilename = sprintf('1.3.12.2.1107.5.1.4.75599.30000019070106482124700035955-I00%d.dcm',k);
    end
 inputFolder   = ' C:\Users\yunus\OneDrive\Masaüstü\tez\1rah \';
 [X,map] = dicomread(fullfile(inputFolder,inputFilename));
    image8 = uint8(255 * mat2gray(X));
    fName = [' C:\Users\yunus\OneDrive\Masaüstü\tez\emre333 \',num2str(k),'.png'];
   imwrite(image8,fName, 'png');
end
disp('Ýþlem bitti') 