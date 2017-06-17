ex_libs = Path.join [System.user_home, ".ex_libs"]
build_path = Path.join ["_build", "prod", "lib"]
paths = Path.join [ex_libs, "*", build_path, "*", "ebin"]
for path <- Path.wildcard(paths), File.dir?(path) do
    IO.puts "Appending path: #{path}"
    true = Code.append_path path
end
