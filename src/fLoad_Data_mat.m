% Function to load a .mat file
% input: path -> Address where the files are stored
% input: file_name -> String file name to be uploaded
% return: File uploaded to worspace
% Example to use:
% data = fLoad_Data_mat(raw_data_path,'file')

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function [data] = fLoad_Data_mat(path,file_name)
    %data=load(fullfile(path,strcat(file_name,'.mat')));
    data=load(strcat(path,file_name),'-mat');
    data=struct2cell(data);
    data=data{1,1};% Return cell array
end