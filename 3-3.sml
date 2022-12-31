(* 3.3.1 *)
(* a *)
fun factorial(0) = 0
| factorial(1) = 1
| factorial(n) = n * factorial(n-1);
factorial(5);

(* b *)
fun cycle(nil) = nil
| cycle(x::xs) = xs@[x];
cycle([1,2,3,4,5]);
cycle(nil: int list);

(* c *)
fun cycleN(L, 1) = cycle(L)
| cycleN(L, n) = cycleN(cycle(L), n - 1);
cycleN([1,2,3,4,5], 3);

(* d *)
fun duplicate(nil) = nil
| duplicate(x::xs) = x::x::duplicate(xs);
duplicate([1,2,3,4,5]);

(* e *)
fun pow(x, 0) = 1
| pow(x, i) = x * pow(x, i - 1);
pow(2, 4);

(* f *)
fun max(a: real, b) =
    if a > b then a
    else b;
fun maxList(nil) = 0.0
| maxList(x::xs) = max(x, maxList(xs));
maxList([1.0,4.0,3.0,5.0,2.0]);

(* 3.3.2 *)
fun flip(nil) = nil
| flip(x::nil) = [x]
| flip(x::y::zs) = y::x::flip(zs);
flip([1,2,3,4,5]);
flip([1,2,3,4]);

(* 3.3.3 *)
fun deleteIth(nil, _) = nil
| deleteIth(x::xs, 0) = xs
| deleteIth(x::xs, i) = x::deleteIth(xs, i - 1);
deleteIth([0,1,2,3,4], 0);
deleteIth([0,1,2,3,4], 2);
deleteIth([0,1,2,3,4], 7);

(* 3.3.4 *)
(*
sumLists([[1,2],nil,[3]])

x = 1
xs = [2]
YS = [nil, [3]]
sumLists([[2], nil, [3]])

x = 2
xs = nil
YS = [nil, [3]]
sumLists([nil, nil, [3]])

YS = [nil, [3]]
sumLists([nil, [3]])

YS = [[3]]
sumLists([[3]])

x = 3
xs = nil
YS = nil
sumLists(nil)

We match sumLists(nil) and return 0
*)

(* 3.3.5 *)
(* a *)
(*
(["a","b","c"],["d","e"])
x = "a"
y = "b"
zs = ["c"]
w = ["d","e"]
*)

(* b *)
(*
(["a","b"],4.5)
x = "a"
y = "b"
zs = nil
w = 4.5
*)

(* c *)
(*
([5],[6,7])
Does not match, the first element of the tuple, [5], must have at least two elements.
*)

(* 3.3.6 *)
(*
     ::
    /  \
  (,)   zs
 /   \
x     y

        ::
       /  \
     (,)   nil
    /   \
  (,)    3
 /   \
1     2

x = (1,2)
y = 3
zs = nil
*)

(* 3.3.7 *)
fun square(0) = 0
| square(n) = square(n - 1) + 2 * n - 1;
square(4);

(* 3.3.8 *)
fun order(nil) = nil
| order((z as (x,y))::zs) =
    if x < y then z::order(zs)
    else (y, x)::order(zs);
order([(1,2),(4,3)]);

(* 3.3.9 *)
fun isVowel(#"a"::_) = true
|   isVowel(#"e"::_) = true
|   isVowel(#"i"::_) = true
|   isVowel(#"o"::_) = true
|   isVowel(#"u"::_) = true
|   isVowel(_) = false;
isVowel([#"a", #"c"]);
isVowel([#"c", #"a"]);
isVowel([#"a", #"c"]);

(* 3.3.10 *)
fun pigLatin(L) = if isVowel(explode(L)) then concat([L, "yay"]) else implode(pigLatinHelper(explode(L)))
and
pigLatinHelper(L) = if isVowel(L) then L@explode("ay") else pigLatinHelper(tl(L)@[hd(L)]);
pigLatin("able");
pigLatin("stripe");

(* 3.3.11 *)
(* a *)
fun member(_, nil) = false
|   member(x, y::ys) = x = y orelse member(x, ys);
member(3, [1,2,3,4,5]);
member(6, [1,2,3,4,5]);

(* b *)
fun delete(_, nil) = nil
|   delete(x, y::ys) = if x = y then ys else y::delete(x, ys);
delete(3, [1,2,3,4,5]);
delete(6, [1,2,3,4,5]);

(* c *)
fun insert(x, nil) = [x]
|   insert(x, L as y::ys) = if x = y then L else y::insert(x, ys);
insert(3, [1,2,3,4,5]);
insert(6, [1,2,3,4,5]);

(* 3.3.12 *)
fun append(_, nil) = nil
|   append(a, x::xs) = (a::x)::append(a, xs);
append(1, [[2,3],[4,5,6],nil]);

(* 3.3.13 *)
fun powerSet(nil) = [nil]
|   powerSet(x::xs) = powerSet(xs)@append(x, powerSet(xs));
powerSet([1,2]);

(* 3.3.14 *)
fun productDiffHelper(_, nil) = 1.0
|   productDiffHelper(a, b::bs) = (a - b) * productDiffHelper(a, bs);
fun productDiff(nil) = 1.0
|   productDiff(x::xs) = productDiffHelper(x, xs) * productDiff(xs);
productDiff([4.0,3.0,2.0,1.0]);

(* 3.3.15 *)
fun isEmpty(nil) = true
|   isEmpty(_) = false;
isEmpty(nil);
isEmpty([1]);

fun sum(nil) = nil
|   sum((x,y)::zs) = nil;

(* 3.3.16 *)
(*
ML can deduce that sumPairs has a domain type (int * int) list because
it first identifies that the return type is of type int. This return value
is added to x and y which means x and y must be ints. From the pattern matching,
it knows that the input must be of type ('a * 'b) list. Combining this with
the knowledge of the types of x and y, it deduces that the domain is of type
(int * int) list.
*)
