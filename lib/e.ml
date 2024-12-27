let app = "eml"
let author = "Dmitry Ponyatov"
let email = "dponyatov@gmail.com"

(* *)
let mkd d = if not (Sys.is_directory d) then Sys.mkdir d 0x750

let dirs =
  mkd app;
  mkd (app ^ "/" ^ ".vscode")
