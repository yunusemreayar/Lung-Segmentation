%medyan filitresi uygulama
for k = 1:672
    disp('Tamamland�.')
     inputFilename = sprintf('%d.png',k);
 inputFolder   = ' C:\Users\yunus\OneDrive\Masa�st�\tez\emre333 \';
 ResimOrjinal=imread(fullfile(inputFolder,inputFilename));
tuzBiber=imnoise(ResimOrjinal,'salt & pepper',0.02);  % tuz ve biber g�r�lt�s� ekle
medyanFiltresi=medfilt2(tuzBiber);
fName = [' C:\Users\yunus\OneDrive\Masa�st�\tez\emre334 \',num2str(k),'.png'];
   imwrite(medyanFiltresi,fName, 'png');
end
disp('��lem bitti')
