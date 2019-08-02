clear all;
close all;


%%%>>>>>>>> Input Variables

%Knight Moves
xMoves=1;
yMoves=2;

n=30; % size of board

%position of the knight
xPos=10;
yPos=10;

%declaring variables
bi=zeros(n,n);
[Srows,Scols]=size(bi);

%variables for creating Pattern
aSign=1;
bSign=1;

temX=xMoves;
temY=yMoves;

%%%>>>>>>>> Creating Board
for i=1:2:Srows
    for j=1:2:Scols
        bi(i,j)=1;
        bi(i+1,j+1)=1;
    end
end

%Giving a value to Knight piece
bi(yPos,xPos)=4;

%imagesc(bi);

%%%>>>>>>>> Creating Pattern
for i=1:8
    pat(i,:)=[xMoves*aSign,yMoves*bSign] ;
    bSign=bSign*(-1);
    
    if rem(i,2)==0
        aSign=aSign*(-1);
    end
    
    if i>=4
        xMoves=temY;
        yMoves=temX;
    end
end

%pat=[-2 -1;-2 1;2 -1;2 1;];

%%%Applying pattern and getting possible moves
[op,newPttern]=oneIteration(xPos,yPos,pat)
[rows,cols]=size(op);

%%%>>>>>>>> Creating Output by changing value of moves
for i=1:rows
    if op(i,2)> 0 && op(i,1) >0
        bi(op(i,2),op(i,1))=5; 
    end
end
bi(yPos,xPos)=4;

imagesc(bi)

