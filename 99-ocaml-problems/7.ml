(*

Flatten a List

type 'a node =
  | One of 'a 
  | Many of 'a node list

# flatten [One "a"; Many [One "b"; Many [One "c" ;One "d"]; One "e"]];;
- : string list = ["a"; "b"; "c"; "d"; "e"]

*)

type 'a node =
  | One of 'a
  | Many of 'a node list

let flatten l = 
  let rec aux acc = function
    | [] -> acc
    | One h :: t -> aux (h :: acc) t
    | Many h :: t -> aux (aux acc h) t
in List.rev (aux [] l)

(*

This one was much tougher than the last 6, mainly due to the custom type. Turns out
the syntax is much like `Some` | `None` for pattern matching. It's also interesting you can't just
attach the head to the tail of the acc, not sure if there's a way around it. Using `@` makes the 
typechecker unhappy since it is for appending lists and cons is for single elements

*)