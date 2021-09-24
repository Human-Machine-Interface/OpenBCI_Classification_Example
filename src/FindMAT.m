% Function that returns the list of .MAT files
% input (path): address of the folder where the data is .MAT
% output (filenames): Complete list of .MAT file in folder
% Example: 
%   path = fullfile('./Data/');
%   filenames=FindMAT(path)
% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/
function [filenames] = FindMAT(path)
    filenames = dir(fullfile(path ,'*.mat'));
    [~, reindex] = sort( str2double( regexp( {filenames.name}, '\d+', 'match', 'once' )));
    filenames = filenames(reindex);
end