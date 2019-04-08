function example(name)
%EXAMPLE Example matlab function.
%
% Syntax:  example(name, a, b)
%
% Inputs:
%   name  - Input name
%   a		  - Input a
%   b		  - Input b
%
% Outputs:
%   none
%
% Example:
%   example(a, b)
%   This example print the input values.
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none
%
% See also: none
%
% $Author: Eleftherios Avramidis, Research Computing Services, Cambridge $
% $Email: ea461@cam.ac.uk $
% $Copyright: MIT License $
% $Date: 2019/04/08 $
% $Version: 1.0 $

tic
%disp(['The first value is: ' num2str(a)])
%disp(['The second value is: ' num2str(b)])

%save([num2str(name) '_a.mat'],'a')
%save([num2str(name) '_b.mat'],'b')

b=2;
save([num2str(name) '/b.mat'],'b');
toc

end
