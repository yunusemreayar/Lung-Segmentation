for n=1:672
    im = imread(sprintf('%d.png',n));
    save(sprintf('%d.mat',n),'im');
 end
% 672 tane 2D foto�raf� matris olarak depolanmas�
 numImages = 672;
 allImages = uint8(zeros(512,512,numImages));
 % dosya dizini de�i�tirme
 cd 'C:\Users\yunus\OneDrive\Masa�st�\don\'; %2D foto�raflar�n konumu
 % foto�raflar� y�kle
 for k=1:numImages 
    % dosya adlar�n� yap�land�rma
    filename = [num2str(k) '.mat'];
    % dosyan�n i�indeki verileri y�kleme
    data = load(filename);
    % verileri 3D diziye kaydetme
    allImages(:,:,k) =  data.(char(fields(data)));
 end

 imshow3D ( allImages )
 volumeViewer(allImages);