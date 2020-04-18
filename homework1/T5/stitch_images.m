function stitched_img = stitch_images(H,dimg1,dimg2)
% Finally we stitch two images 
InverseOfH = inv(H);
[rowsIm1, colsIm1] = size(rgb2gray(dimg1));
[rowsIm2, colsIm2] = size(rgb2gray(dimg2));
finalLeft = 1;
finalRight = colsIm2;
finalTop = 1;
finalBot = rowsIm2;

leftTopCornerCoord = H * [1;1;1];
leftTopCornerCoord = leftTopCornerCoord / leftTopCornerCoord(3,1);
if leftTopCornerCoord(1) < finalLeft
    finalLeft = floor(leftTopCornerCoord(1));
end
if leftTopCornerCoord(2) < finalTop
    finalTop = floor(leftTopCornerCoord(2));
end

RightTopCornerCoord = H * [colsIm1;1;1];
RightTopCornerCoord = RightTopCornerCoord / RightTopCornerCoord(3,1);
if RightTopCornerCoord(1) > finalRight
    finalRight = floor(RightTopCornerCoord(1));
end
if RightTopCornerCoord(2) < finalTop
    finalTop = floor(RightTopCornerCoord(2));
end

leftBotCornerCoord = H * [1;rowsIm1;1];
leftBotCornerCoord = leftBotCornerCoord / leftBotCornerCoord(3,1);
if leftBotCornerCoord(1) < finalLeft
    finalLeft = floor(leftBotCornerCoord(1));
end
if leftBotCornerCoord(2) > finalBot
    finalBot = floor(leftBotCornerCoord(2));
end

RightBotCornerCoord = H * [colsIm1;rowsIm1;1];
RightBotCornerCoord = RightBotCornerCoord / RightBotCornerCoord(3,1);
if RightBotCornerCoord(1) > finalRight
    finalRight = floor(RightBotCornerCoord(1));
end
if RightBotCornerCoord(2) > finalBot
    finalBot = floor(RightBotCornerCoord(2));
end

mergeRows = finalBot - finalTop + 1;
mergeCols = finalRight - finalLeft + 1;
transformedImage = zeros(mergeRows, mergeCols,3);
for row = 1:mergeRows
    for col = 1: mergeCols
        currentCoord = [col+finalLeft-1;row+finalTop-1;1];
        CoordInOriImage = InverseOfH * currentCoord;
        CoordInOriImage = CoordInOriImage / CoordInOriImage(3,1);

        xInSrcImage = CoordInOriImage(1,1);
        yInSrcImage = CoordInOriImage(2,1);

        floorY = floor(yInSrcImage);
        floorX = floor(xInSrcImage);
        ceilY = ceil(yInSrcImage);
        ceilX = ceil(xInSrcImage);
        normalizedX = xInSrcImage - floorX;
        normalizedY = yInSrcImage - floorY;

        if (floorX >= 1 && floorY >=1 && ceilX <= colsIm1 && ceilY <= rowsIm1) 
            f00 = dimg1(floorY,floorX,1);
            f01 = dimg1(ceilY,floorX,1);
            f10 = dimg1(floorY,ceilX,1);
            f11 = dimg1(ceilY,ceilX,1);
            transformedImage(row,col,1) = f00 + normalizedX * (f10 - f00)+ ...
                                        normalizedY * (f01 - f00) + ...
                                        normalizedX*normalizedY*(f00-f10-f01+f11);

            f00 = dimg1(floorY,floorX,2);
            f01 = dimg1(ceilY,floorX,2);
            f10 = dimg1(floorY,ceilX,2);
            f11 = dimg1(ceilY,ceilX,2);
            transformedImage(row,col,2) = f00 + normalizedX * (f10 - f00)+ ...
                                        normalizedY * (f01 - f00) + ...
                                        normalizedX*normalizedY*(f00-f10-f01+f11);

            f00 = dimg1(floorY,floorX,3);
            f01 = dimg1(ceilY,floorX,3);
            f10 = dimg1(floorY,ceilX,3);
            f11 = dimg1(ceilY,ceilX,3);
            transformedImage(row,col,3) = f00 + normalizedX * (f10 - f00)+ ...
                                        normalizedY * (f01 - f00) + ...
                                        normalizedX*normalizedY*(f00-f10-f01+f11);
        end
    end
end

transformedImage(-finalTop + 2 : -finalTop + 1 + rowsIm2, -finalLeft + 2 : -finalLeft + 1 + colsIm2,:) = dimg2;
stitched_img=uint8(transformedImage);
end

