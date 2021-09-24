% Function that returns the index by label of allData file and Max index value.
% input (allData): allData file
% output (ILCH, IRCH, ILDF, ILPF, IRDF, IRPF, IDesc, idxMax): index values
% by label and Max index value. Using Imaginaery EEG Task

% Remember that for this experiment the labels represent:
% BEO, LCH, RCH, LDF, LPF, RDF, RPF, Descanso = "1", "2", "3", "4", "5", "6", "7", "8"

% Example: 
%   [[1..2] [3..4]...[12..13] [2]]=fIdxLabelEEG_I(allData)

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/
function [ILCH, IRCH, ILDF, ILPF, IRDF, IRPF, IDesc, idxMaxI] = fIdxLabelEEG_I(allData)
    ILCH=[]; IRCH=[]; ILDF=[]; ILPF=[]; IRDF=[]; IRPF=[]; IDesc=[];idxMaxI=[];
    
    %IBEO=find(allData(:,17)==1);
    ILCH=find(allData(:,17)==2);IRCH=find(allData(:,17)==3);
    ILDF=find(allData(:,17)==4);ILPF=find(allData(:,17)==5);
    IRDF=find(allData(:,17)==6);IRPF=find(allData(:,17)==7);
    IDesc=find(allData(:,17)==8);
    %MBEO=find(allData(:,17)==9);
    %MLCH=find(allData(:,17)==10);MRCH=find(allData(:,17)==11);
    %MLDF=find(allData(:,17)==12);MLPF=find(allData(:,17)==13);
    %MRDF=find(allData(:,17)==14);MRPF=find(allData(:,17)==15);
    %MDesc=find(allData(:,17)==16);

    idxMaxI=min([length(ILCH) length(IRCH) length(ILDF) length(ILPF) length(IRDF)...
    length(IRPF) length(IDesc)]);
end