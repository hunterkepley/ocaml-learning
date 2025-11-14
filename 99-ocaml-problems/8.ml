(*

Eliminate Duplicates

# compress ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;
- : string list = ["a"; "b"; "c"; "a"; "d"; "e"]

*)

let compress l =
  let rec aux acc = function
    | [] -> []
    | h :: t -> if List.find (fun x -> String.equal h x) acc then aux acc t else aux (h :: acc) t
in aux [] l