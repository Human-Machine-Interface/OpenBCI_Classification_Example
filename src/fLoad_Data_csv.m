% Function to load a .csv file
% input: path -> Address where the files are stored
% input: file_name -> String file name to be uploaded
% input: type -> True is a table / false is a structure
% return: File uploaded to worspace
% Example to use:
%	data = csv_Load_Data(raw_data_path,'file',true)

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/


function [data] = fLoad_Data_csv(path,file_name,var_names,type)
   if ~type 
    data=csvread(strcat(path,strcat(file_name,'.csv')));%return a structure
    %data=struct2table(data);
   else
    %data=readtable(strcat(path,file_name));%return a table file
    data=readtable(strcat(path,strcat(file_name,'.csv')));%return a table file
    data = array2table(data,'VariableNames',var_names');
   end
   %dataProperties.VariableNames=var_names;
end