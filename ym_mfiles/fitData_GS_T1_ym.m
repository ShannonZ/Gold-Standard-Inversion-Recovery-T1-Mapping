
% This function processes the GS data set
% function fitData_GS_T1 (SUBJECT_ID, T1path, indeces)

function fitData_GS_T1_ym(T1path, indeces_complex)

%T1path = '/data/mril/mril11/stikov/Scans/T1_mapping/gu_ye_20110727_123110/GS/data_tmp';

% Where to find the DICOM data 
%loadpath = [T1path 'singleslicedicomfiles/'];

%indeces = [17 19 21 23 25 27 29 31 33 35]; % Selecting only the right indeces


indeces = downsample(indeces_complex, 2);
[T1path '/data_tmp']
getDataMag (T1path, indeces);

% getComplex(T1path, indeces_complex);
loadpath = T1path;

% Where to save the .mat 
%savename = [T1path 'data/' 'TestSingleSlice'];

dataStr = fullfile (T1path, 'data.mat');
savename = fullfile (T1path, 'results.mat');

T1ScanExperiment(dataStr, savename, 'RD-NLS');
T1FitDisplayScan(dataStr, savename);

% getDataComplex(T1path, indeces_complex, SUBJECT_ID);
% 
% dataStr = fullfile (T1path, 'dataComplex.mat');
% savename = fullfile (T1path, 'resultsComplex.mat');
% 
% T1Scanexperiment(dataStr, savename, 'RD-NLS');
% T1FitDisplayScan(dataStr, savename);


% Now trying to do a magnitude/phase data fit
% For that we need to use convert_mp_ri.m



