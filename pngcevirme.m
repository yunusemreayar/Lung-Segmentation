%png ye %png ye �evirme
for k = 1:672
    disp('Tamamland�.')
    if k<10
     inputFilename = sprintf('1.3.12.2.1107.5.1.4.75599.30000019070106482124700035955-I0000%d.dcm',k);
    
    elseif k<100
     inputFilename = sprintf('1.3.12.2.1107.5.1.4.75599.30000019070106482124700035955-I000%d.dcm',k);
    
    elseif k<673
     inputFilename = sprintf('1.3.12.2.1107.5.1.4.75599.30000019070106482124700035955-I00%d.dcm',k);
    end
 inputFolder   = ' C:\Users\yunus\OneDrive\Masa�st�\tez\1rah \';
 [X,map] = dicomread(fullfile(inputFolder,inputFilename));
    image8 = uint8(255 * mat2gray(X));
    fName = [' C:\Users\yunus\OneDrive\Masa�st�\tez\emre333 \',num2str(k),'.png'];
   imwrite(image8,fName, 'png');
end
disp('��lem bitti') 