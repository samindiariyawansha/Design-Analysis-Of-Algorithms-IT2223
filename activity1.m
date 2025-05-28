balance = 1000;
while true
disp('1.Deposit');
disp('2.Withdraw')
disp('3.Balance inquiry')
disp('4.Exit')
x = input("Enter your choice number: ");
switch(x)
    case 1
        y = input("Enter your deposite amount: ");
        if(y>0)
            balance = balance+y;
            fprintf('\n Your new balance: %.2f\n',balance);
        else
            fprintf('invalid amount.');
        end
    case 2
        z = input('Enter your withdraw amount: ');
        balance = balance -z;
        fprintf('\n Your new balance: %.2f\n',balance);
    case 3
        fprintf('\n Your new balance: %.2f\n',balance);
    case 4
        fprintf('Thank you for using the ATM.');
        break;
    otherwise
        fprintf('Invalid selection, please choose valid number');


end
end
        