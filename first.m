%variable
for variable =1:10
    disp(variable)
end

for variable2=1:2:15
    disp(variable2)
end

%write a for loop to calculate the sum of the numbers from 1to 10%

sum=0;
for i=1:10
    sum=sum+i;
end
disp(sum)

%wite a code for find factoial
n=5
 fact = 1;

for i=2:1:n;

    fact =fact*i;
end

disp(fact); 

x=10;
disp(['the Number is :',num2str(x)]);
disp("The number is:" +x)
fprintf('The number is:%d',x);
y=sprintf('The number is:%d' ,x);
disp(y);

z=input('Enter the number: ');
disp(['you entered: ',num2str(z)]);


name=input("Enter the name: ",'s');
disp("you entered: "+name);

%print the numbers less than 10

i=1;

while i<10

    disp(i);
   i=i+1;

end
