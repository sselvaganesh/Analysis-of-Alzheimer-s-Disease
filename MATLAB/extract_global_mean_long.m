clear all

voxel_threshold = 5;

% read in patient list information
%A = dlmread('scanInfo_sorted_test.txt');
A = dlmread('input.txt');  %Selva%
disp('=================');

%{
% define ROIs
clusterid1 = [31,36,38,87,108,1317];
clusterid4 = [36,12];
clusterid6 = [12,13,14,32,44,86,1722,4];

for contrast = [1,4,6]
    switch contrast
    case 1
        clusterid = clusterid1;

    case 4
        clusterid = clusterid4;

    case 6
        clusterid = clusterid6;
    end
    
    regional_mean = zeros(size(A,1),length(clusterid));
    regional_voxel_counts = zeros(size(A,1),length(clusterid));
        
    for cluster = 1 : length(clusterid)

%}

regional_mean = zeros(size(A,1),1);
regional_voxel_counts = zeros(size(A,1),1);

% load in a cluster mask
aa = load_nii('regions/grey_mask_binary_0.3.img');
cluster_mask = aa.img > 0;    
                
        for i = 1 : size(A,1)        
     
            % load in an image            
            temp = 'selva/w<scan_id>gray19_17.img';
            path = strrep(temp, '<scan_id>', num2str(A(i,1)));
            %path =  strrep(path1, '<scan_id>', num2str(A(i,2)));
            
            Image1 = load_nii(path);
            ImageArray1 = double(Image1.img);
            
            regional_mean(i,1) = mean(nonzeros(cluster_mask .* ImageArray1 .* (ImageArray1>voxel_threshold)));
            %disp(regional_mean(i,1));
            regional_voxel_counts(i,1) = nnz(cluster_mask .* ImageArray1 .* (ImageArray1>voxel_threshold));                         

        end
        
    %end
    
    % write results in text files for each contrast
    %unit1 = '%8.4f\t';
    %unit2 = '%8d\t';
    %format1 = repmat(unit1,1,size(clusterid,2));
    %format2 = repmat(unit2,1,size(clusterid,2));
  
    fid = fopen('output/global_perfusion_values.txt','w');
    fprintf(fid,sprintf('%8.4f\n',regional_mean'));
    fclose(fid); 
    
    %fid2 = fopen(sprintf('output/regional_voxel_counts_contrast%d.txt',contrast),'w');
    %fprintf(fid2,sprintf('%s\n',format2),regional_voxel_counts');
    %fclose(fid2);
%end
