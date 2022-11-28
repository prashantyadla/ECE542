leafdata = []
collardata = []
i = 0
for c=1:size(data)
    x = (jsonencode(struct("leaf", data.leaf{c, 1})));
%     fid = fopen('6f_F_6f2.json', 'w');
    writematrix(x, "Image_Annotation/leaf_"+i+".dat")
    y = (jsonencode(struct("collar", data.collar{c, 1})));
    writematrix(y, "Image_Annotation/collar_"+i+".dat")
%     writematrix(y, y+"_"+i+".dat")
    disp(i)
    i = i+1
end
% jsonencode(struct("leaf", leafdata))
% jsonencode(struct("collar", collardata))
disp(leafdata)
disp(collardata)
