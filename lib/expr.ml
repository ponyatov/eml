(** operator *)
type op = Add | Sub | Mul | Div

(** arithmetic expression *)
type expr =
  | Int of int  (** integer constant *)
  | BinOp of op * expr * expr  (** binary operator *)
  | Pfx of op * expr  (** prefix operator *)
  | Sfx of expr * op  (** suffix operator *)

let x = Int (-1)
let y = Int 2
let sum = BinOp (Add, x, y)
let neg = Pfx (Sub, sum)

(* assert (eval x == -1) *)
(* assert (eval y == 2) *)

let rec eval expr =
  match expr with
  | Int i -> i
  | BinOp (op, x, y) -> (
      match op with
      | Add -> eval x + eval y
      | Sub -> eval x - eval y
      | Mul -> eval x * eval y
      | Div -> eval x / eval y)
  | Pfx (op, e) -> (
      match op with
      | Add -> +eval e
      | Sub -> -eval e
      | _ -> failwith "bad prefix")
  | _ -> failwith "not implemented"

(* assert (eval sum == 1) *)
(* assert (eval neg == -(eval sum)) *)
