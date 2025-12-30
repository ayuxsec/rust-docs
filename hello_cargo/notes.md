init project:

```sh
cargo new hello_cargo
# or force git (useful when run in child directories of a git repo)
cargo new hello_cargo --vcs=git

cd hello_cargo
```

`src/main.rs`

```rs
fn main() {
    println!("Hello, world!"); // prinln is a marco here
}
```

Build & run:

```sh
cargo build                        # debug build: faster compile, more debug info
./target/debug/hello_cargo         # run debug binary

cargo build --release              # release build: optimized, faster runtime
./target/release/hello_cargo

cargo run # compile the code and then run the resultant executable all in one command
```

Quick compile check:

```sh
cargo check # checks your code to make sure it compiles but doesn’t produce an executable
```
