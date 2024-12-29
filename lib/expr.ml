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
