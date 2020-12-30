(* 2.3.1 *)
(* a *)
(* The7Dwarves *)
(* an alphanumeric identifier suitable for ordinary (nontype) values *)

(* b *)
(* 7Dwarves *)
(* not an identifier *)

(* c *)
(* SevenDwarves,The *)
(* not an identifier *)

(* d *)
(* 'SnowWhite' *)
(* an identifier that must represent a type as a value *)

(* e *)
(* a<=b *)
(* not an identifier *)

(* f *)
(* hurrah! *)
(* not an identifier *)

(* g *)
(* #1 *)
(* not an identifier *)

(* h *)
(* '123 *)
(* an identifier that must represent a type as a value *)

(* 2.3.2 *)
val a = 3;
val b = 98.6;
val a = "three";
val c = a^str(chr(floor(b)));
(* After execution, a <- "three", b <- 98.6, c <- "threeb" *)
