(* 2.2.1 *)
(* a *)
floor 123.45;

(* b *)
floor ~123.45;

(* c *)
ceil 123.45;

(* d *)
ceil ~123.45;

(* e *)
ord #"Y";

(* f *)
chr 120;

(* g *)
real (ord #"N");

(* h *)
chr (trunc 97.0);

(* i *)
str #"Z";

(* 2.2.2 *)
(* a *)
(* ceil(4) *)
ceil(4.0);

(* b *)
(* if true then 5+6 else 7.0 *)
if true then 5+6 else 7;

(* c *)
(* chr(256) *)
chr(255);

(* d *)
(* chr(~1) *)
chr(0);

(* e *)
(* ord(3) *)
ord(#"3");

(* f *)
(* chr(#"a") *)
ord(#"a");

(* g *)
(* if 0 then 1 else 2 *)
if false then 1 else 2;

(* h *)
(* ord("a") *)
ord(#"a");
