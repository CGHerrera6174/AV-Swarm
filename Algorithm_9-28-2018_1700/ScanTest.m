clear all;
close all;
clc;

formatSpec = '%s %s \r\n';
% sizeA = [100 2];
ObservDistfileID = fopen('Observation_Point_Distribution_Version3.txt');
OPDistfile = fscanf(ObservDistfileID,formatSpec);
C = textscan(ObservDistfileID,'%s %s');
fclose(ObservDistfileID);

fileID1 = fopen('Observation_Point_Distribution_Version3.txt');
fileID2 = fopen('Observation_Point_Distribution_Version4.txt');
formatSpec2 = '%d %f %f %f %f %f %d %d 0 0 ';
N = 10;
% C_text = textscan(OPDistfile,formatSpec2,N,'Delimiter',',');
C_text0 = textscan(fileID2,'%s');
% C_text0 = textscan(fileID2,'%s','delimiter',',');
C_text1 = textscan(fileID1,'%s');
C_text2 = textscan(fileID2,'%s %s %s %s %s %s %s %s %s %s','Delimiter',',');
celldisp(C_text2)
fclose(fileID2);

a = C_text0{1,1};
coolA =erase(a,',')
i = 0;
for n = 11 : length(a)
    i = i + 1;
    goodA(i,1) = str2num(coolA{n,1});
    
end

goodA
1
for n = 1 : length(a)/10
    
    for m = 1 : 10
        i = i + 1;    
        goodA(n,m) = coolA(i,1); 
    end
end

% A = cell2mat(goodA)
T = cell2table(goodA)
A = table2array(T)
B = cell2mat(A)
1


for n = 2 : length(goodA)
    betterA(n,:) = str2num(A(n,:));   
end

betterA










