
numVoters = input('Enter the total number of voters: ');


votes = zeros(1,4); 
for i = 1:numVoters
    fprintf('\nVoting Menu:\n');
    fprintf('1. Candidate A\n');
    fprintf('2. Candidate B\n');
    fprintf('3. Candidate C\n');
    fprintf('4. Candidate D\n');
    
    choice = input(sprintf('Voter %d, enter your choice: ', i));
 
    switch choice
        case 1
            votes(1) = votes(1) + 1;
        case 2
            votes(2) = votes(2) + 1;
        case 3
            votes(3) = votes(3) + 1;
        case 4
            votes(4) = votes(4) + 1;
        otherwise
            fprintf('Invalid vote! Not counted.\n');
    end
end

fprintf('\nVoting Results:\n');
fprintf('Candidate A: %d votes\n', votes(1));
fprintf('Candidate B: %d votes\n', votes(2));
fprintf('Candidate C: %d votes\n', votes(3));
fprintf('Candidate D: %d votes\n', votes(4));

[maxVotes, winnerIndex] = max(votes);
if maxVotes > 0
    fprintf('Winner: Candidate %c\n', 'A' + (winnerIndex - 1));
else
    fprintf('No valid votes cast.\n');
end

while true
    fprintf('\nVisualization Menu:\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot (creative visualization)\n');
    fprintf('4. Exit\n');
    
    visChoice = input('Enter your choice: ');
    
    switch visChoice
        case 1
            bar(votes);
            xlabel('Candidates');
            ylabel('Vote Count');
            title('Election Vote Distribution');
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
        case 2
            pie(votes, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Election Vote Proportion');
        case 3
            scatter(1:4, votes, 100, 'filled');
            xlabel('Candidates');
            ylabel('Vote Count');
            title('Creative Scatter Plot of Votes');
            xticks(1:4);
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
        case 4
            fprintf('Thank you for participating in the election!\n');
            break;
        otherwise
            fprintf('Invalid choice, please try again.\n');
    end
end
