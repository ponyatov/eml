let app = "eml"
let author = "Dmitry Ponyatov"
let email = "dponyatov@gmail.com"

(* *)
let mkd d = try Sys.mkdir d 0o740 with Sys_error _ -> ()

let extensions =
  let f = open_out ".vscode/extensions.json" in
  close_out f

let settings =
  let f = open_out ".vscode/settings.json" in
  close_out f

let tasks =
  let f = open_out ".vscode/tasks.json" in
  close_out f

let launch =
  let f = open_out ".vscode/launch.json" in
  close_out f

let c_cpp_properties =
  let f = open_out ".vscode/c_cpp_properties.json" in
  close_out f

let vscode =
  let vsc = ".vscode" in
  mkd vsc;
  extensions;
  settings;
  tasks;
  launch;
  c_cpp_properties

let bin =
  let d = "bin" in
  mkd d;
  open_out (d ^ "/.gitignore") |> close_out

let doc =
  let d = "doc" in
  mkd d;
  open_out (d ^ "/.gitignore") |> close_out

let lib =
  let d = "lib" in
  mkd d;
  open_out (d ^ "/.gitignore") |> close_out

let inc =
  let d = "inc" in
  mkd d;
  open_out (d ^ "/.gitignore") |> close_out

let src =
  let d = "src" in
  mkd d;
  open_out (d ^ "/.gitignore") |> close_out

let tmp =
  let d = "tmp" in
  mkd d;
  open_out (d ^ "/.gitignore") |> close_out

let ocaml =
  let f = open_out ".ocamlformat" in
  Printf.fprintf f
    "version=0.26.2
profile=default
margin=80
line-endings=lf
break-string-literals=never
";
  close_out f

let dirs =
  mkd app;
  vscode;
  bin;
  doc;
  lib;
  inc;
  src;
  tmp;
  ocaml

let () = dirs
