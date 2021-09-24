% Function to load a .csv file
% input: path -> Address where the files are stored
% input: file_name -> String file name to be uploaded
% return: allData -> File uploaded to worspace
% Example to use:
%   path = fullfile('./data/');%data folder
%   allData = fLoad_EEG_csv(path,'AllDataRMS.csv');

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function [allData] = fLoad_EEG_csv(path,file_name)
    path1=fullfile(path,file_name);
    data=readtable(path1);%Select i CSV file
    allData=table2array(data);% Array Double
end