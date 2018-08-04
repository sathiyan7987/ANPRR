clear all;
clc

in=input('Enter 1 to select images\n');
if(in==1)
       in2=input('5 images are there select 1 to 5\n');
      
       var=strcat('FinalDataset\Correct_image_',num2str(in2));
       var = strcat(var,'.jpg');
       result=preprocessingt(var);
       msgbox('Characters have been extracted. Now run learn.py script for recognition. See the result in answer.out file');     
end
if(in==2)
       in2=input('3 files are prsent , Enter any number from 1 to 3 to check for results \n');
      
       var=strcat('FinalDataset\Partial_',num2str(in2));
       var = strcat(var,'.jpg');
       result=preprocessingt(var);
       msgbox('Characters have been extracted. Now run learn.py script for recognition. See the result in answer.out file');     
end
if(in==3)
       %in2=input('5 files are prsent , Enter any number from 1 to 5 to check for results \n');
      
       var=strcat('FinalDataset\incorrect');
       var = strcat(var,'.jpg');
       result=preprocessingt(var);
       msgbox('Characters have been extracted. Now run learn.py script for recognition. See the result in answer.out file');     
end