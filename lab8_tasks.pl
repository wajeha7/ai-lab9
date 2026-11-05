% Lab 8 tasks

% ---------------------------------------------------------
% Task 2 - sumlist(List, Sum): Sum is the total of a list of numbers
% ---------------------------------------------------------
sumlist([], 0).                        % the sum of no numbers is 0
sumlist([Head|Tail], Sum) :-
    sumlist(Tail, TailSum),
    Sum is Head + TailSum.

% Tests:
% ?- sumlist([1,2,5,7], S).   S = 15.
% ?- sumlist([], S).          S = 0.

% ---------------------------------------------------------
% Task 3 - Total and Average of three numbers entered by the user
% Run with:  ?- total_average.
% Remember the full stop after every number you type, e.g.  5.
% ---------------------------------------------------------
total_average :-
    write('Enter the first number: '),  read(A),
    write('Enter the second number: '), read(B),
    write('Enter the third number: '),  read(C),
    Total is A + B + C,
    Average is Total / 3,
    nl,
    write('Total   = '), write(Total),   nl,
    write('Average = '), write(Average), nl.
