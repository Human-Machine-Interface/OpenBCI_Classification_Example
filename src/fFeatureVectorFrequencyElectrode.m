% Function to generate Frequency Vector (Frequency vs Electrode in a vector)
% Rms value of each electrode concatenated in rows
% Frecuencia vs Electrodos vs PSD (Spectral Power Density)
% input (EEGdata): Two-dimensional matrix, where the columns are the EEG electrodes and the rows are the samples
% input (Fs): Sampling frequency in Hz (160Hz)
% input (Fmin): Minimum cutoff frequency in Hz (8Hz)
% input (Fmax): Maximum cutoff frequency in Hz (31Hz)
% output (sp): One-dimensional vector, whose columns represent the Frequency and rows are electrodes

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function [spVector] = fFeatureVectorFrequencyElectrode(EEGdata,Fs,Fmin,Fmax)
	spVector=[];
    for i=1:size(EEGdata,2)% number i of columns (electrodes)
        [sp,fp,tp] = pspectrum(EEGdata(:,i),Fs,'spectrogram', ...
        'FrequencyLimits',[Fmin Fmax]);
        spVector=[spVector rms(sp)]; %Concatenate RMS(electrode) by columns
    end
end