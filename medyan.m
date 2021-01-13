%medyan filitresi uygulama
for k = 1:672
    disp('Tamamlandý.')
     inputFilename = sprintf('%d.png',k);
 inputFolder   = ' C:\Users\yunus\OneDrive\Masaüstü\tez\emre333 \';
 ResimOrjinal=imread(fullfile(inputFolder,inputFilename));
tuzBiber=imnoise(ResimOrjinal,'salt & pepper',0.02);  % tuz ve biber gürültüsü ekle
medyanFiltresi=medfilt2(tuzBiber);
fName = [' C:\Users\yunus\OneDrive\Masaüstü\tez\emre334 \',num2str(k),'.png'];
   imwrite(medyanFiltresi,fName, 'png');
end
disp('Ýþlem bitti')
