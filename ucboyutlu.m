for n=1:672
    im = imread(sprintf('%d.png',n));
    save(sprintf('%d.mat',n),'im');
 end
% 672 tane 2D fotoðrafý matris olarak depolanmasý
 numImages = 672;
 allImages = uint8(zeros(512,512,numImages));
 % dosya dizini deðiþtirme
 cd 'C:\Users\yunus\OneDrive\Masaüstü\don\'; %2D fotoðraflarýn konumu
 % fotoðraflarý yükle
 for k=1:numImages 
    % dosya adlarýný yapýlandýrma
    filename = [num2str(k) '.mat'];
    % dosyanýn içindeki verileri yükleme
    data = load(filename);
    % verileri 3D diziye kaydetme
    allImages(:,:,k) =  data.(char(fields(data)));
 end

 imshow3D ( allImages )
 volumeViewer(allImages);