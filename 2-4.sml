(* 2.4.1 *)
(* a *)
#2(3,4,5);
(* val it = 4 : int *)

(* b *)
hd([3,4,5]);
(* val it = 3 : int *)

(* c *)
tl([3,4,5]);
(* val it = [4,5] : int list *)

(* d *)
explode("foo");
(* val it = [#"f",#"o",#"o"] : char list *)

(* e *)
implode([#"f",#"o",#"o"]);
(* val it = "foo" : string *)

(* f *)
"c"::["a","t"];
(* val it = ["c","a","t"] : string list *)

(* g *)
["c","o"]@["b","o","l"];
(* val it = ["c", "o", "b", "o", "l"] : string list *)

(* h *)
concat(["c", "a", "t"]);
(* val it = "cat" : string *)

(* 2.4.2 *)
(* a *)
(* #4(3,4,5) *)
(* #4 index is out of bounds *)
#3(3,4,5);

(* b *)
(* hd([]) *)
(* Cannot get head of empty list, unclear what is desired *)
[];

(* c *)
(* #1(1) *)
1;

(* d *)
(* explode(["bar"]) *)
explode("bar");

(* e *)
(* implode(#"a",#"b") *)
implode([#"a",#"b"]);

(* f *)
(* ["r"]::["a","t"] *)
"r"::["a","t"];

(* g *)
(* tl([]) *)
[];

(* h *)
(* 1@2 *)
[1]@[2];

(* i *)
(* concat([#"a",#"b"]) *)
concat(["a","b"]);

(* 2.4.3 *)
(* a *)
(1.5,("3",[4,5]));
(* real * (string * int list) *)

(* b *)
[[1,2],nil,[3]];
(* int list list *)

(* c *)
[(3,4.5), (4,5.5), (6,7.5)];
(* (int * real) list *)

(* d *)
([#"a",#"b"],[nil,[1,2,3]]);
(* char list * int list list *)

(* 2.4.4 *)
(* No, (1,2) is a tuple of type int * int whereas
(1,2,3) is a tuple of type int * int * int.

[1,2] and [1,2,3] are the same type, they are both of type int list.
*)

(* 2.4.5 *)
(* a *)
[[[1]]];

(* b *)
[(1,#"a")];

(* c *)
(["a"], (1,(3.5,"b")), 2);

(* d *)
(((1,2), [true], 3.5), (4.5, "a"));

(* e *)
((true, 1), #"a");

(* f *)
(3.5, [[[[1]]]]);

(* 2.4.6 *)
hd(explode("a"));
