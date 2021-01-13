for k = 1:672
    disp('Tamamlandý.')
     inputFilename = sprintf('%d.png',k);
 inputFolder   = 'C:\Users\yunus\OneDrive\Masaüstü\tez\emre336\';
 initImage = imread(fullfile(inputFolder,inputFilename));
[rows, columns] = size(initImage);
initImage = medfilt2(initImage,[9 12]);
[B, A] = imhist(initImage);
C=A.*B;
J=A.*A;
E=B.*J;
n=sum(B);
Average=sum(C)/sum(B);
var=sum(E)/sum(B)-Average*Average;
standDev= (var)^0.5;
thresholdValue = Average+0.5*standDev;
bwImage = initImage > thresholdValue;
NewImage=bwImage;
J = -bwdist(~NewImage);
Ld = watershed(J);
bw2 = NewImage;
bw2(Ld == 0) = 0;
mask = imextendedmin(J,1500);
D2 = imimposemin(J,mask);
Ld2 = watershed(D2);
bw3 = NewImage;
bw3(Ld2 == 0) = 0;
bwImage=bw3;
bigMask = bwareaopen(bwImage, 2000);
finalImage = bwImage;
finalImage(bigMask) = false;
bwImage=bwareaopen(finalImage,70);
labeledImage = bwlabel(bwImage, 8);
RegionMeasurements = regionprops(labeledImage, initImage, 'all');
Ecc = [RegionMeasurements.Eccentricity];
RegionNo = size(RegionMeasurements, 1);
allowableEccIndexes = (Ecc< 0.98);
keeperIndexes = find(allowableEccIndexes);
RegionImage = ismember(labeledImage, keeperIndexes);
bwImage=RegionImage;
    fName = ['C:\Users\yunus\OneDrive\Masaüstü\tez\emre337\',num2str(k),'.png'];
   imwrite(bwImage,fName, 'png');
end
disp('Ýþlem bitti')