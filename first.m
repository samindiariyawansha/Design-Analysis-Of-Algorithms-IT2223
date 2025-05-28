%%string fuctions

str1='apple'
str2='banana'

result=strcat(str1,str2)
disp(result)


x={'hello ','world ','sri'}
result2=strcat(x{:})
disp(result2)

result3=strjoin(x,':')
disp(result3)


%%..................find......................

str3='age'
str4='tryr'

strcmp(str3,str4)
stril='The cat sat on the mat'
indic=strfind(stril,'cat')

%%...................replace.....................

stril='The cat sat on the mat'
old='cat'
new='dog'
strrep(stril,old,new)

%%........split the string using comma..............

inputstring='apple,banana,orange,grapes'
substring=strsplit(inputstring,',')


 %..........lower case and upper case...............
 st1='apPLE'
 lower(st1)
 upper(st1)

 %...........remove white space.....................

 strtrim(' hello world ') %behind and infront sence


 %...get the marks from the user and print the grade...

%marks>=90 A+
%marks>=80 A
%marks>=70 B
%marks>=60 C
%marks>=50 D
%else F

%{
 x=input("Enter Your Marks :");

if(x>=90)
    disp('A+')
elseif(x>=80)
    disp('A')
elseif(x>=70)
    disp('B')
elseif(x>=60)
    disp('C')
elseif(x>=50)
    disp('D')
else
    disp('F')
end
%}

%..get three numbers from user and find max
%{
num1=input("Enter Number 1: ");
num2=input("Enter Number 2: ");
num3=input("Enter Number 3: ");

  if(num1>num2&&num1>num3)
       disp("Largest number is: "+num1)
  elseif(num2>num1&&num2>num3)
      disp("Largest number is: "+num2)
  else(num3>num1&&num3>num2)
      disp("Largest number is: "+num3)

  end
      

  num1 = input("Enter Number 1: ");
num2 = input("Enter Number 2: ");
num3 = input("Enter Number 3: ");

if (num1 > num2) && (num1 > num3)
    disp(["Largest number iss: ", num1])
elseif (num2 > num1) && (num2 > num3)
    disp(["Largest number iss: ", num2])
else
    disp(["Largest number iss: ", num3])
end

%}
%............get a character from user and check vovel or consonant..................................
    
char = lower(input('Enter a character: ', 's')); % Get input and convert to lowercase

if any(char == ['a', 'e', 'i', 'o', 'u'])
    disp([char, ' is a vowel.']);
elseif isletter(char)
    disp([char, ' is a consonant.']);
else
    disp('Please enter a valid alphabetic character.');
end

