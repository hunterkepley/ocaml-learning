(*

Reverse a List

# rev ["a"; "b"; "c"];;
- : string list = ["c"; "b"; "a"]

*)

let rev l =
  let rec rev_aux acc = function
    | [] -> []
    | h :: t -> rev_aux (acc @ h) t
in rev_aux [] l

(*

I actually did this one perfectly :)

*)