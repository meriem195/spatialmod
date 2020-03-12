function [y1] = myNNFun(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 11-Mar-2020 15:56:41.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = Qx2 matrix, input #1
% and returns:
%   y = Qx1 matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [2;2];
x1_step1.gain = [0.00392156862745098;0.00195694716242661];
x1_step1.ymin = -1;

% Layer 1
b1 = [30.858470037631541061;1.5312430749076708647;1.5469673883300170125;19.863255942315301894;0.03780395896757717672;-0.25521243078857719366;-56.642944006878941821;20.646780728313260056;21.470975694478720897;-46.609045667719911421];
IW1_1 = [30.213349863001642603 -0.17088183108859156256;2.0364879348446884855 0.40215450941281410957;2.06432484545368089 0.42070904256639291008;19.993084950381451392 -0.16751679023805096658;-0.07172987921263410116 0.046318744706635085751;0.35709998747721649615 0.059132182698588442449;-56.355272411175022285 0.12164586335255278549;20.361198098615044927 -0.19302988494199244118;21.216735570001343802 -0.2916619422980377685;-46.10226362365424535 0.14116724173424591293];

% Layer 2
b2 = -0.98942319941850098708;
LW2_1 = [-23.994850602284554242 1.6391593347663728775 -1.4777189218416546534 -4.4205530439309317359 17.210729993621036726 3.4667018398664608547 13.073150333847081583 16.819356924918228202 -3.4628257542531044599 -29.192977822996152071];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.0019588638589618;
y1_step1.xoffset = 1;

% ===== SIMULATION ========

% Dimensions
Q = size(x1,1); % samples

% Input 1
x1 = x1';
xp1 = mapminmax_apply(x1,x1_step1);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = repmat(b2,1,Q) + LW2_1*a1;

% Output 1
y1 = mapminmax_reverse(a2,y1_step1);
y1 = y1';
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end
