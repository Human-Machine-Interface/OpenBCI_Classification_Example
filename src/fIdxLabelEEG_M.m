% Function that returns the index by label of allData file and Max index value.
% input (allData): allData file
% output (ILCH, IRCH, ILDF, ILPF, IRDF, IRPF, IDesc, idxMax): index values
% by label and Max index value. Using Motor EEG Task

% Remember that for this experiment the labels represent:
% BEO, LCH, RCH, LDF, LPF, RDF, RPF, Descanso = "9", "10", "11", "12", "13", "14", "15", "16"

% Example: 
%   [[1..2] [3..4]...[12..13] [2]]=fIdxLabelEEG_M(allData)

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/
function [MLCH, MRCH, MLDF, MLPF, MRDF, MRPF, MDesc, idxMaxM] = fIdxLabelEEG_M(allData)
    MLCH=[]; MRCH=[]; MLDF=[]; MLPF=[]; MRDF=[]; MRPF=[]; MDesc=[];idxMaxM=[];
    
    MBEO=find(allData(:,17)==9);
    MLCH=find(allData(:,17)==10);MRCH=find(allData(:,17)==11);
    MLDF=find(allData(:,17)==12);MLPF=find(allData(:,17)==13);
    MRDF=find(allData(:,17)==14);MRPF=find(allData(:,17)==15);
    MDesc=find(allData(:,17)==16);

    idxMaxM=min([length(MLCH) length(MRCH) length(MLDF) length(MLPF) length(MRDF)...
    length(MRPF) length(MDesc)]);
end