let app = "eml"
let author = "Dmitry Ponyatov"
let email = "dponyatov@gmail.com"

(* *)
let mkd d = try (Sys.mkdir d 0o740) with Sys_error _ -> ()

let vscode =
  let vsc = app ^ "/.vscode" in
  mkd vsc;
  let ext = open_out (vsc ^ "/extensions.json") in
  close_out ext

  let bin = mkd (app^"/bin")
  let doc = mkd (app^"/doc")
  let lib = mkd (app^"/lib")
  let inc = mkd (app^"/inc")
  let src = mkd (app^"/src")
  let tmp = mkd (app^"/tmp")
   

let dirs =
  mkd app;
  vscode; bin; doc; lib; inc; src; tmp;

let () = dirs
