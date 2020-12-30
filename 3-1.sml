(* 3.1.1 *)
(* a *)
fun cubed(x:real) = x * x * x;
cubed(3.0);

(* b *)
fun min3(a,b,c) =
    if a<b then
        if a<c then a
        else c
    else
        if b<c then b
        else c;

min3(6,10,5);

(* c *)
fun third(L) = hd(tl(tl(L)));
third([1,2,3,4,5]);

(* d *)
fun reverse(a,b,c) = (c,b,a);
reverse(1,2,3);

(* e *)
fun thirdChar(s) = third(explode(s));
thirdChar("cats");

(* f *)
fun cycle(L) = tl(L)@[hd(L)];
cycle([1,2,3,4,5]);

(* 3.1.2 *)
(* a *)
fun max3(a,b,c) =
    if a>b then
        if a>c then a
        else c
    else
        if b>c then b
        else c;
fun minMax(a,b,c) = (min3(a,b,c),max3(a,b,c));
minMax(3,2,1);

(* b *)
fun sort3(a,b,c) =
    if a<b then
        if b<c then (a,b,c)
        else (* b is largest *)
            if a<c then (a,c,b) else (c,a,b)
    else (* a >= b *)
        if a<c then (b,a,c)
        else (* a is largest *)
            if b<c then (b,c,a) else (c,b,a);
sort3(1,2,3);
sort3(1,3,2);
sort3(2,1,3);
sort3(2,3,1);
sort3(3,1,2);
sort3(3,2,1);

(* c *)
fun roundTenth(x) = real(round(x*10.0)) / 10.0;
roundTenth(5.54);

(* d *)
fun deleteSecond(L) = hd(L)::tl(tl(L));
deleteSecond([1,2,3,4,5]);

(* 3.1.3 *)
val a = 2;
fun f(b) = a*b;
val b = 3;
fun g(a) = a+b;

(* a *)
(* 8 *)
f(4);

(* b *)
(* 11 *)
f(4)+b;

(* c *)
(* 8 *)
g(5);

(* d *)
(* 10 *)
g(5)+a;

(* e *)
(* 18 *)
f(g(6));

(* f *)
(* 17 *)
g(f(7));
