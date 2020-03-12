clear all;
input= csvread('test_input.csv');
outputs= [csvread('test_output.csv')]';
step=25;
actual_output=output(1:step:length(input));

predicted_out =[];
for i=1:step:length(input)
    predicted_out =[predicted_out myNNFun(input(i,:))];
end

error=actual_output-round(predicted_out);
x= 1:step:length(input);
figure;
stem(x,error,'.');
figure;
plot(x,predicted_out,'x',x,actual_output,'.');
