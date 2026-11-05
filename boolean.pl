% Task 1 - (A AND B) OR (NOT A AND NOT B)
% Truth tables as three-argument facts: gate(Input1, Input2, Output)

% AND truth table
and(true,  true,  true).
and(true,  false, false).
and(false, true,  false).
and(false, false, false).

% OR truth table
or(true,  true,  true).
or(true,  false, true).
or(false, true,  true).
or(false, false, false).

% Negation: neg(Input, Output)
neg(true,  false).
neg(false, true).

% (A AND B) OR (NOT A AND NOT B)
% logicGate(A, B, Output)
% Gates used: two ands, two negs, one or
logicGate(A, B, O) :-
    and(A, B, X),        % A AND B
    neg(A, NA),          % NOT A
    neg(B, NB),          % NOT B
    and(NA, NB, Y),      % NOT A AND NOT B
    or(X, Y, O).         % (A AND B) OR (NOT A AND NOT B)

% Test queries:
% ?- logicGate(true,  true,  O).   O = true.
% ?- logicGate(true,  false, O).   O = false.
% ?- logicGate(false, true,  O).   O = false.
% ?- logicGate(false, false, O).   O = true.
