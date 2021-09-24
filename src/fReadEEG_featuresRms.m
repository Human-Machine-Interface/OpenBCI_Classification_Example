% Function that returns the RMS value of the normalized data for each electrode EEG (16 in total)
% input (path): address where the data is located
% input (fileName): file name .csv
% output (features): vector with 16 rms values, one for each EEG electrode

% Example: 
%   path = fullfile('D:/proyect/data/');%data folder
%   features = fReadEEG_featuresRms(path,'DATO');

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function [features] = fReadEEG_featuresRms(path,fileName)
    features=[];
    data=readtable(fullfile(path,fileName));%Select i CSV file
    dataNew=table2array(data);% Array Double
    dataNew(1,:)=[];%Delete the first row
    dataNew(:,1)=[];%Delete the first column
    DataNorm = fNormalization(dataNew);
    features = rms(DataNorm);
end