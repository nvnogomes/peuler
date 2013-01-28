
% If p is the perimeter of a right angle triangle, {a, b, c}, which value, for p ≤ 1000, has the most solutions?

right_rectangle(A,B,C,P) :- 
	A^2 + B^2 == C^2,
	P is A+B+C.
	

