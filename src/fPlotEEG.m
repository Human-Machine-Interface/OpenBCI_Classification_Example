% Plot and save EEG data (Not Table)
% input: EEG Data (EEGData)
% return: Save Image
% Example:
%	filename=strcat(int2str(i),'_',int2str(j));
%	fPlotEEG(EEGData,filename);
% More examples: https://github.com/Human-Machine-Interface
% Read more: https://vasanza.blogspot.com/
function [] = fPlotEEG(EEGData,filename)
    DataNorm=[];
	figure
	plot(EEGData);xlabel('samples');ylabel('mVolts');
	%legend('Electrode 1','Electrode 2','Electrode 3','Electrode 4','Electrode 5'...
    %,'Electrode 6','Electrode 7','Electrode 8','Electrode 9','Electrode 10'...
    %,'Electrode 11','Electrode 12','Electrode 13','Electrode 14','Electrode 15','Electrode 16');
	savefig(strcat(filename,'.fig'));
	set(gca,'position',[0 0 1 1],'units','normalized');
	saveas(gcf,strcat(filename,'.jpg'));
end