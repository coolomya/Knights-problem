% This function applies pattern to a point/pixel and gives 
%  cordinates of applied pattern in image
%
% Input 
%   X and Y cordinates of pixel to apply pattern
%   Pattern Array
%
% Output
%   Array with new cordinates of pattern
%

    %X axis 
    % left = negative
    % right =positive

    %Y axis 
    % up = negative
    % down=positive
    
%note: clip outputs which go beyond image boundry


function result=patternApply(xPos,yPos,patternArray)
    %xPos=3;yPos=2;
    %patternArray=[-1 -1;-1 1;1 -1;1 1]
    %[patArrayRows,g]=size(patternArray);

    result=[xPos+patternArray(:,1),yPos+patternArray(:,2)];
end


