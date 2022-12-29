(* 3.2.1 *)
(* a *)
fun 
    factorial(n) = 
        if n = 1 then 1
        else n * factorial(n-1);
factorial(5);

(* b *)
fun cycle(L) = tl(L)@[hd(L)];
fun cycleN(L, n) =
    if n = 1 then cycle(L)
    else cycleN(cycle(L), n - 1);
cycleN([1,2,3,4,5], 3);

(* c *)
fun
    duplicate(L) =
        if L = nil then nil
        else [hd(L), hd(L)] @ duplicate(tl(L));
duplicate([1,2,3,4,5]);

(* d *)
fun
    length(L) =
        if L = nil then 0
        else 1 + length(tl(L));
length([1,2,3,4,5]);

(* e *)
fun
    pow(x, i) =
        if i = 0 then 1
        else x * pow(x, i - 1);
pow(2, 4);


(* f *)
(* See section 5.3.4 for why we have to use null *)
fun
    max(a: real, b) =
        if a > b then a
        else b;
fun
    maxList(L: real list) =
        if null(tl(L)) then hd(L)
        else max(hd(L), maxList(tl(L)));
maxList([1.0,4.0,3.0,5.0,2.0]);

(* 3.2.2 *)
(*
ML can make the deduction because c+1 implies c is an integer. In the third
line of the function, the function returns either c or b+d. If c is an integer,
then b and d must be integers as well. Finally, in line 2 we compare a to b and
if b is an integer, then a must be an integer as well.
*)

(* 3.2.3 *)
(* a *)
(* b and c must be integers. *)

(* b *)
(* b must be an integer. *)

(* c *)
(* b, c, d, and e must all be integers. *)

(* d *)
(* b, c, and d must be integers. *)

(* e *)
(* b, c, and d must be integers. *)

(* f *)
(* b and c would default to integers because of the less than comparison. *)

(* g *)
(* b and c would default to integers because of the less than comparison.
d and e would default to integers because of the addition and multiplication
operations. *)

(* 3.2.4 *)
(*
Calling fact(4) adds an entry for parameter n and its value 4. Because n is 
not 1, we must evaluate fact(3). This adds an entry for n with a value 3.
n is still not 1 so we evaluate fact(2). This adds another entry for n with a
value of 2. n is still not 1 so we evaluate fact(1). This adds another entry
for n with a value of 1. Finally, we arrive at n = 1 so we return 1.

The addition of fact(1) goes away and we evaluate n times the result of fact(1).
At this point the highest n in the stack has a value of 2 so the result of 
fact(2) is 2. We return 2 and the addition of fact(2) goes away. n with a value
of 3 is at the top of the stack so we compute 3 * fact(2) and return 6. The 
addition of fact(3) goes away and we are left with the initial call of fact(4)
where n has a value of 4. We comput 4 * fact(3) and return 24.
*)
