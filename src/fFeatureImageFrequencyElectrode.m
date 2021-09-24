% Function to generate Frequency image (Frequency vs Electrode)
% Rms value of each electrode concatenated in rows
% Frecuency vs Electrode vs PSD (Spectral Power Density)
% input(EEGdata): Two-dimensional matrix, where the columns are the EEG 
%                 electrodes and the rows are the samples
% input (Fs): Sampling frequency in Hz (160Hz)
% input (Fmin): Minimum cutoff frequency in Hz (8Hz)
% input (Fmax): Maximum cutoff frequency in Hz (31Hz)
% output (sp): Two-dimensional matrix, whose columns represent
%              the Frequency and rows are EEG electrodes
% output (im): Image data type, represents the temporal behavior of each electrode

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function [spImage,im] = FeatureImageFrequencyElectrode(EEGdata,Fs,Fmin,Fmax)
	spImage=[];
    for i=1:size(EEGdata,2)% number i of columns (electrodes)
        [sp,fp,tp] = pspectrum(EEGdata(:,i),Fs,'spectrogram', ...
        'FrequencyLimits',[Fmin Fmax]);
        spImage=[spImage;rms(sp)];%Concatenate RMS(electrode) by rows
    end
	im=imagesc(spImage);
	%surf(data(:,:))
	set(gca,'position',[0 0 1 1],'units','normalized')
end