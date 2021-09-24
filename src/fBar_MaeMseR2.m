% Bar graph root mean absolute error (MAE), mean square error (MSE) and R squared
% input: yest, y youtput
% return: mae,mse, r2
% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/
function [mae,mse,r2] = fBar_MaeMseR2(yest,youtput)
    mae = sum(abs(yest-youtput)/length(yest));
    %mse = mean((output - yest).^2);
    mse = immse(yest, youtput);
    r2 = fR2(youtput,yest);
    % Difference between the mean square error and the true value 
    %dmser=mean(sqrt((yest-youtput).^2)./youtput);

    c = categorical({'MAE','MSE','1-R2'});
    values = [mae mse 1-r2];
    figure;
    b=bar(c,values);

    %xlabel('xlabel')
    ylabel('Error')
    title('MAE, MSE and 1-R2')

    xtips1 = b(1).XEndPoints - 0.2;
    ytips1 = b(1).YEndPoints + 0.0003;
    labels1 = string(b(1).YData);
    text(xtips1,ytips1,labels1,'VerticalAlignment','middle')
end