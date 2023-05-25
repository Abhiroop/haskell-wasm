filename="$1"
f="${filename%.c}"
emcc $1 -O0 -s STANDALONE_WASM -o $f.wasm --no-entry
wasm2wat $f.wasm > $f.wat
