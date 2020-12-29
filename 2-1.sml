(* 2.1.1 *)
(* a *)
1+2*3;
(* 7 *)

(* b *)
5.0-4.2/1.4;
(* 2.0 *)

(* c *)
11 div 2 mod 3;
(* 2 *)

(* d *)
"foo"^"bar"^"";
(* "foobar" *)

(* e *)
3>4 orelse 5<6 andalso not (7<>8);
(* false *)

(* f *)
if 6<10 then 6.0 else 10.0;
(* 6.0 *)

(* g *)
0xAB+123;
(* 294 *)

(* h *)
0xab<123;
(* false *)

(* 2.1.1 *)
(* a *)
(* 8/4 *)
8 div 4;

(* b *)
(* if 2<3 then 4 *)
if 2<3 then 4 else 5;

(* c *)
(* 1<2 and 5>3 *)
1<2 andalso 5>3;

(* d *)
(* 6+7 DIV 2 *)
6+7 div 2;

(* e *)
(* 4.+3.5 *)
4.0+3.5;

(* f *)
(* 1.0<2.0 or 3>4 *)
1.0<2.0 orelse 3>4;

(* g *)
(* #"a"^#"b" *)
"a"^"b";

(* h *)
(* 123. *)
123.0;

(* i *)
(* 1.0 = 2.0 *)
1.0 <= 2.0 andalso 2.0 <= 1.0;

(* 2.1.3 *)
print("\t\"\\\\\\\" stands for the double-quote character, \\\n \
\\t\\which otherwise would be interpreted \\\n \
\\t\\as the string ender.\"\n");

(* 2.1.4 *)
(* a *)
fun alt_orelse (E, F) = if E then true else (if F then true else false);
alt_orelse (true, true);
alt_orelse (true, false);
alt_orelse (false, true);
alt_orelse (false, false);

(* b *)
fun alt_andalso (E, F) = if E then (if F then true else false) else false;
alt_andalso (true, true);
alt_andalso (true, false);
alt_andalso (false, true);
alt_andalso (false, false);
