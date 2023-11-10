(* 3.4.1 *)
fun thousandthPower(x:real) =
        let
            val four = x*x*x*x;
            val twenty = four*four*four*four*four;
            val hundred = twenty*twenty*twenty*twenty*twenty;
            val fiveHundred = hundred*hundred*hundred*hundred*hundred
        in
            fiveHundred*fiveHundred
        end;
thousandthPower(1.01);

(* 3.4.2 *)
fun split(nil) = (nil,nil)
|   split([a]) = ([a],nil)
|   split(a::b::cs) =
        let
            val x = split(cs);
            val M = #1(x);
            val N = #2(x)
        in
            (a::M, b::N)
        end;
split([1,2,3,4,5]);

(* 3.4.3 *)
fun append(_, nil) = nil
|   append(a, x::xs) = (a::x)::append(a, xs);
fun powerSet(nil) = [nil]
|   powerSet(x::xs) =
        let
            val powerSetTail = powerSet(xs)
        in
            powerSetTail@append(x, powerSetTail)
        end;
powerSet([1,2]);

(* 3.4.4 *)
fun maxList(nil) = 0.0
|   maxList(x::nil) = x
|   maxList(x::xs) =
        let
            val maxXs = maxList(xs)
        in
            if x > maxXs then x
            else maxXs
        end;
maxList([1.0,4.0,3.0,5.0,2.0]);

(* 3.4.5 *)
fun doubleExponential(x: real, 0) = x
|   doubleExponential(x, 1) = x * x
|   doubleExponential(x, i) =
        let
            val exp = doubleExponential(x, i -1)
        in
            exp * exp
        end;
doubleExponential(1.01, 5)

(* 3.4.6 *)
fun sumPairs(nil) = (0,0)
|   sumPairs((x,y)::zs) =
        let
            val (i,j) = sumPairs(zs)
        in
            (x+i,y+j)
        end;
sumPairs([(1,2),(3,4),(5,6)]);

(* 3.4.7 *)
fun evenOdd(nil) = (0,0)
|   evenOdd(odd::nil) = (odd, 0)
|   evenOdd(odd::even::xs) =
        let
            val (i,j) = evenOdd(xs)
        in
            (odd+i,even+j)
        end;
evenOdd([1,2,3,4,5,6]);
