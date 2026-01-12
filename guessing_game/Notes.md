```console
cargo new guessing_game
vim /src/main.rs
```

main.rs

```rs
// `::` is the path separator used to access items inside a module, type, or namespace
use std::io; // bring the io input/output library into scope

fn main() {
    println!("Guess the number!");

    println!("Please input your guess.");

    let mut guess = String::new(); // create a mutable variable that is currently bound to a new, empty instance of a String.

    io::stdin() // use the `::` path separator to access the `stdin` function inside the `io` module
        .read_line(&mut guess) // call read_line on the handle to write input into `guess`
        .expect("Failed to read line"); // panic if reading input fails

    println!("You guessed: {guess}");
}
```

variables in rs:

```rs
let apples = 5; // immutable (default behaviour)
let must bananas = 5; // mutable
```

- Also possible to do `std::io::stdin` if you don't add `use std::io` at top. the `stdin` returns an instance of [std::io::Stdin](https://doc.rust-lang.org/std/io/struct.Stdin.html) which is a type that represents a handle to the standard input for your terminal.

- `.expect("Failed to read line");`: We could have written this code as: `io::stdin().read_line(&mut guess).expect("Failed to read line");`
