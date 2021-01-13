for k = 1:672
    disp('Tamamlandý.')
     inputFilename = sprintf('%d.png',k);
 inputFolder   = ' C:\Users\yunus\OneDrive\Masaüstü\tez\emre335 \';
 ResimOrjinal=imread(fullfile(inputFolder,inputFilename));
 edgeThreshold = 0.4;
 amount = 0.5;
B = localcontrast(ResimOrjinal, edgeThreshold, amount);
fName = [' C:\Users\yunus\OneDrive\Masaüstü\tez\emre336\',num2str(k),'.png'];
   imwrite(B,fName, 'png');
end
disp('Ýþlem bitti')
