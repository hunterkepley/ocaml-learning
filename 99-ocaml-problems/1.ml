(* 

Tail of a list 

# last ["a" ; "b" ; "c" ; "d"];;
- : string option = Some "d"
# last [];;
- : 'a option = None

*)

let rec list_tail = function
  | [] -> None
  | [ x ] -> Some x
  | _ :: t -> list_tail t