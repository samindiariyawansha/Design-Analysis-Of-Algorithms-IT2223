%%create array with 1000 numbers
%%Use tic/toc to measeure time for :
%%           Linear search
%%           Binary search(after sorting)
%%           Compare results


%% based on target binary and linear serach differently.
%% In target index is in first half linear search fastre
%% if target

array = randi([1,10000],1,1000);
target = array(randi([1,1000]));

tic;
linearIndex =find(array == target,1);
linearTime = toc;

sortArray = sort(array);
tic;
binaryIndex=binarySearch(sortArray,target);
binaryTime = toc;

fprintf('Linear Search: %6f s\n',linearTime);
fprintf('Binary Search: %6f s\n',binaryTime);

function index = binarySearch(arr , target)
low =1; high =length(arr);
while low<=high
    mid = (floor(low + high)/2);
    if arr(mid)== target
        index = mid; return;
    elseif arr(mid) < target, low = mid+1;
    else, high =mid -1;
    end
end
    index =-1;
end

%%Another
arr = 1:1000;
target = 978;
n=length(arr);
found = false;

tic;
for  i=1:n
    if arr(i) == target
        found=true;
        index=i;
        break;
    end
end
if found
    fprintf("The target element is found at index %d\n",index);
else
    disp('')

    low =1;
    high=length(arr);

    tic;
    while low<=high
        mid=floor((low+high)/2);
        if arr(mid)==target
            fprintf("Element %d found at index 5d.\n",target,mid);
            break;
        elseif target<arr(mid)
            high = mid-1;
        else
            low=mid+1;
        end
    end

    if low>high
        fprintf('Element %d not found in the array.\n', target);
    end
    toc;