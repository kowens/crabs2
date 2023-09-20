function capt = getCapt (captSize)

% The function getCapt computes and returns the captain with zero heading located at the origin in the form of a matrix.
% The input parameters captSize sets the size of the captain. The output is a matrix in which
% Each column of the returned matrix represents one point on the captain.



%{
                        The Captain
                            |
                            |
                    14 ______12____________13                          |
                            |  \
                            |   \
                            |    \
               4________5________6
                        |   |    |
                        |   |    7 ---8
                        |   |    |    |
                        | (0,0 ) |    | __________________ positive x-axis
                        |   |    |    |
                        |   |    10___9
                        |   |    |
               3________2________1
                            |  /
                            | /
                            |/
                            11
                            |
                            |
                            |
                            |
                         positive y-axis
%}

%left side
captPt1 = [captSize; captSize;1]; %left shoulder
captPt2 = [-captSize; captSize;1]; %left hip
captPt3 = [-3*captSize; captSize;1]; %left foot

%right side

captPt4 = [-3*captSize; -captSize;1]; %right foot
captPt5 = [-captSize; -captSize;1]; %right hip
captPt6 = [captSize; -captSize;1]; %right shoulder

%head
captPt7 = [captSize;   -captSize/2;1]; %right neck
captPt8 = [2*captSize; -captSize/2;1]; %right head
captPt9 = [captSize;    captSize/2;1]; %left neck
captPt10 = [2*captSize; captSize/2;1]; %left head


%hands
captPt11 = [0; 2*captSize;1]; %left hand
captPt12 = [0; -2*captSize;1]; %right hand

%spear
captPt13 = [3*captSize; -2*captSize;1]; %spear tip
captPt14 = [-captSize; -2*captSize;1]; %spear bottom


capt=[ captPt1 , captPt2, captPt3, captPt4 ,  captPt5,  captPt6, ...
       captPt7 , captPt8, captPt9, captPt10 , captPt11, captPt12, ...
       captPt13, captPt14];

endfunction



