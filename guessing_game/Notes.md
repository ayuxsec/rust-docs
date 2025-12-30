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

- `= String::new();` means bound to result of `String::new` a fn that returns a new instance of string
- [String](https://doc.rust-lang.org/std/string/struct.String.html) is a string type provided by the standard library that is a growable, UTF-8 encoded bit of text.
- The `::` syntax in the `::new` line indicates that new is an associated function of the String type.
- An associated function is a function that’s implemented on a type, in this case String. This new function creates a new, empty string, it’s a common name for a function that makes a new value of some kind.

</details>

4. `io::stdin().read_line(&mut guess)`: call the stdin function from the io module `use std::io`, which will allow us to handle user input also possible to do `std::io::stdin` if you don't add `use std::io` at top. the `stdin` returns an instance of [std::io::Stdin](https://doc.rust-lang.org/std/io/struct.Stdin.html) which is a type that represents a handle to the standard input for your terminal.

5. `.expect("Failed to read line");`: We could have written this code as: `io::stdin().read_line(&mut guess).expect("Failed to read line");` However, one long line is difficult to read, so it’s best to divide it. It’s often wise to introduce a newline and other whitespace to help break up long lines when you call a method with the .method_name() syntax. Now let’s discuss what this line does.