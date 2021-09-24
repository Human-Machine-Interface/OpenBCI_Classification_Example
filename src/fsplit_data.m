% Function that allows splitting a dataset
% input: Data -> Dataset to be split
% input: size -> Size in percent 0 - 1
% return: part1 -> Dataset from start to size
% return: part2 -> Dataset from size to end
% Example to use:
%    [part1, part2] = fsplit_data(data, size)

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function [part1, part2] = fsplit_data(data, size)
	h = height(data);
	part1 =  data(1:round(h * size), :);
	part2 = data(round(h * size) + 1:end, :);
end

