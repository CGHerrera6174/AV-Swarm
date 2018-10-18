prompt = {'Enter matrix size:','Enter colormap name:'};
title = 'Input';
dims = [1 35];
definput = {'20','hsv'};
answer = inputdlg(prompt,title,dims,definput)


h = answer(1,1)
b = str2double(h)