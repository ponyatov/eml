(** arithmetic expression *)
type expr =
  | Int of int  (** integer constant *)
  | BinOp of string * expr * expr  (** binary operator *)
