function [result,patNew]=oneIteration(xPosF,yPosF,patArrayF)
    %%%>>>>>>>> Input Variables

%%%>>>>>>>> Creating Board
for i=1:2:30
    for j=1:2:30
        bi(i,j)=1;
        bi(i+1,j+1)=1;
    end
end

    %position of the knight
    xPos=xPosF;
    yPos=yPosF;

    %pat=[-2 -1;-2 1;2 -1;2 1;];

    %%%Applying pattern and getting possible moves
    op=patternApply(xPos,yPos,patArrayF)
    [rows,cols]=size(op);
    op2=op;
    
    %%%>>>>>>>> Creating Output by changing value of moves
    for i=1:rows
        if op(i,2)> 0 && op(i,1) >0
            op2=patternApply(op(i,1),op(i,2),patArrayF)
            op=[op;op2];
            op=unique(op(:,1:2),'rows','stable')
            %{ [rw,cl]=size(op);
            %for in=1:rw
            %    bi(op(in,2),op(in,1))=5; in
            %    imagesc(bi)
            %end
            %imagesc(bi) }%
        end
    end
    result=op;
    patNew=[op(:,1)-xPos,op(:,2)-yPos];
end