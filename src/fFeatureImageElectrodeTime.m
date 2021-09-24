% Function to generate temporary image (Electrodes vs Samples)
% input(EEGdata): Two-dimensional matrix, where the columns are the EEG 
%                 electrodes and the rows are the samples
% output (im): Image data type, represents the temporal behavior of each electrode

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function [im] = FeatureImageElectrodeTime(EEGdata)
	im=imagesc(EEGdata(:,:));
	set(gca,'position',[0 0 1 1],'units','normalized')
end

