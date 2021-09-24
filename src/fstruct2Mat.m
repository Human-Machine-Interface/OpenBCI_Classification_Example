% Function that returns the mat data form Strct data
% input (StructData): Struct data
% output (MatData): mat data
% Example: 
%   filenames=FindMAT(StructData)
% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/
function [matData] = fstruct2Mat(StructData)
    matData = cell2mat(struct2cell(StructData));
end