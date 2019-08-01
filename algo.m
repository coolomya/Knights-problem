clear all;
close all;

board=zeros(20,20)
%%board(1,3)=1;
[rows,cols] = size(board)

for i=1:2:rows
    for j=1:2:cols
        board(i,j)=1;
        board(i+1,j+1)=1;
    end
end

xmoves=4;
ymoves=6;
xpos=1;
ypos=1;
a=xmoves;
b=ymoves;
board(1,1)=3;
c=1;
for j=1:cols
    ypos=ypos+b;
    xpos=1;
    if ypos>cols
        break
    end
    for i=1:rows
      if xpos>rows
          break
      end
      xpos=xpos+a;
      board(2*xpos,ypos)=3;
      disp([i j])
      imagesc(board)
    end
    
end

imagesc(board);
