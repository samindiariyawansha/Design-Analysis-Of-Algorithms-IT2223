marks = zeros(1,5);
for i = 1:5
    marks(i) = input(sprintf('Enter marks for Student %d: ', i));
    
   
    if marks(i) >= 90
        fprintf('Grade: A\n');
    elseif marks(i) >= 80
        fprintf('Grade: B\n');
    elseif marks(i) >= 70
        fprintf('Grade: C\n');
    elseif marks(i) >= 60
        fprintf('Grade: D\n');
    else
        fprintf('Grade: F\n');
    end
end


while true
    fprintf('\nMenu:\n');
    fprintf('1. Show all marks as a bar chart\n');
    fprintf('2. Show average marks\n');
    fprintf('3. Exit\n');
    
    choice = input('Enter your choice: ');
    
    
    switch choice
        case 1
            bar(marks);
            xlabel('Students');
            ylabel('Marks');
            title('Marks of Students');
        case 2
            fprintf('Average Marks: %.2f\n', mean(marks));
        case 3
            fprintf('Thank you for using the program!\n');
            break;
        otherwise
            fprintf('Invalid choice, please try again.\n');
    end
end