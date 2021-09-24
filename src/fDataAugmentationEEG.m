% Using white noise for data augmentation on temporal data
% input: pathSubj -> Address of the folder where the subject data is stored
% input: ID -> ID of the subject to be saved
% return: null
% Example to use:
% addpath(genpath('./src'))%functions folders
% pathSubj = fullfile('./data/S3_A/');%data folder
% ID ='S3';
% fDataAugmentationEEG(pathSubj,ID)

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function fDataAugmentationEEG(pathSubj,ID)
    filenames = FindCSV(pathSubj);%List All CSV files
    for j=1:length(filenames)% Through all files
        data=readtable(fullfile(pathSubj,filenames(j).name));%Select i CSV file
        dataNew=table2array(data);% Array Double
        r = rand(500,17)*0.1;
        for c=2:16
            dataNew(2:501,c)=dataNew(2:501,c)+r(1:500,c);
        end
        name=filenames(j).name;
        csvwrite(strcat(pathSubj,strcat(strcat(ID,'R1'),name(5:length(name)))),dataNew);
    end
end