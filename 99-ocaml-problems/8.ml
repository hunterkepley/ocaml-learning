(*

Eliminate Duplicates

# compress ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;
- : string list = ["a"; "b"; "c"; "a"; "d"; "e"]

*)

let rec find_result x = function
  | [] -> false
  | h :: t -> if h = x then true else find_result x t


let compress l =
  let rec aux acc = function
    | [] -> List.rev acc
    | h :: t -> if find_result h acc then aux acc t else aux (h :: acc) t
in aux [] l