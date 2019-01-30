
clear all

fid = fopen('config _main.txt','r');
S = textscan(fid,'%s %d');

%-----------------------------------------------------------------------
% Job configuration created by cfg_util (rev $Rev: 4252 $)
%-----------------------------------------------------------------------

for studyind=1:size(S{1},1)

    disp(S);
    disp(studyind);
    
    spm_jobman('initcfg');

    S{1}{studyind}

    matlabbatch{1}.spm.spatial.normalise.estwrite.subj.source = {['/home/selvaganesh/Desktop/RawData/copied/r',S{1}{studyind},'_spgr_seg1.img,1']};
    matlabbatch{1}.spm.spatial.normalise.estwrite.subj.wtsrc = '';
    matlabbatch{1}.spm.spatial.normalise.estwrite.subj.resample = {
                                                               ['/home/selvaganesh/Desktop/RawData/copied/',S{1}{studyind},'gray19_17.img,1']
                                                               ['/home/selvaganesh/Desktop/RawData/copied/r',S{1}{studyind},'_spgr_seg1.img,1']
                                                               };
    matlabbatch{1}.spm.spatial.normalise.estwrite.eoptions.template = {'/home/selvaganesh/Downloads/spm8/apriori/grey.nii,1'};
    matlabbatch{1}.spm.spatial.normalise.estwrite.eoptions.weight = '';
    matlabbatch{1}.spm.spatial.normalise.estwrite.eoptions.smosrc = 8;
    matlabbatch{1}.spm.spatial.normalise.estwrite.eoptions.smoref = 0;
    matlabbatch{1}.spm.spatial.normalise.estwrite.eoptions.regtype = 'mni';
    matlabbatch{1}.spm.spatial.normalise.estwrite.eoptions.cutoff = 25;
    matlabbatch{1}.spm.spatial.normalise.estwrite.eoptions.nits = 16;
    matlabbatch{1}.spm.spatial.normalise.estwrite.eoptions.reg = 1;
    matlabbatch{1}.spm.spatial.normalise.estwrite.roptions.preserve = 0;
    matlabbatch{1}.spm.spatial.normalise.estwrite.roptions.bb = [-78 -112 -50
                                                             78 76 85];
    matlabbatch{1}.spm.spatial.normalise.estwrite.roptions.vox = [2 2 2];
    matlabbatch{1}.spm.spatial.normalise.estwrite.roptions.interp = 1;
    matlabbatch{1}.spm.spatial.normalise.estwrite.roptions.wrap = [0 0 0];
    matlabbatch{1}.spm.spatial.normalise.estwrite.roptions.prefix = 'w';

    output_list = spm_jobman('run', matlabbatch);
    
    clear matlabbatch

end
