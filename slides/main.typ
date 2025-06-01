#import "@preview/polylux:0.4.0": *
 #import "@preview/metropolis-polylux:0.1.0" as metropolis
#import metropolis: new-section, focus

#show: metropolis.setup.with(
  text-font: "DejaVu Sans Mono",
  math-font: "DejaVu Sans Mono",
  code-font: "DejaVu Sans Mono",
  text-size: 22pt,
  footer: [Rust Meetup \#11 \@ letsboot],
)

#set page(paper: "presentation-16-9")
#set text(size: 25pt, font: "DejaVu Sans Mono")

#slide[
    #show: focus
    #toolbox.side-by-side[
    Rust Basel \
    #text(size: 0.5em)[
    Rust Meetup \#11 \@letsboot]
    ][
    #image("images/favicon.png")
    ]
]

#slide[
  = Agenda

   - Rust Basel
   - A word from our sponsors: Endress+Hauser
   - #text(weight: "bold")[Silen Locatelli: : _Your first Rust CLI Project_]
   - Networking & Pizza Enjoyment 🍕
]

#slide[
  = About Rust-Basel

    - Non-profit swiss association
    - Founded in March
    #toolbox.side-by-side[
      #image("images/jonatas.jpeg")
    ][
      #image("images/gigapixel.jpeg")
    ][
      #image("images/silen.jpeg")
    ][
      #image("images/roland.jpeg")
    ][
      #image("images/yasin.jpeg")
    ]
]

#slide[
    #show: focus
    #text(size: 0.8em)[
    Pizza-Order
    ] \
    #text(size: 0.5em)[
    https://dieci.ch
    ]
]

#slide[
    #show: focus
    #rect(fill:white, width: 100%, height: 100%)[#image("images/eh-logo.svg", width: 80%)]
]



#slide[
    #show: focus
    #text(size: 0.8em)[
    Your first Rust CLI Project
  ]

]


#slide[
  = Why
  
  - A beginner friendly topic
  - I love them

]


#new-section[Definiton Time]

#slide[
  = CLI Project
  
  Application, TUI, Script, Job, Watcher
  
]

#slide[
  = Let us try
  
  Anything that does not have a UI
  
]

#slide[
  = Let us try
  
  Anything that we can run on the command line
  
]

#slide[
  = Let us try

  Anything that we drive via the command line
  
]


#new-section[First Lesson]

#slide[
  = What are we actually doing?
  
  - Are we working with existing data?
  - Do we need reports for the Business or Customer?
  - Is the Output easy to read?
  - Is the Input easy to input?
  
]

#slide[
  = What are we actually doing?
  
  - Are we calling an API?
  - Do we have a long running process?
  - Are there prerequisites?
  - What happens if we fail?
  
]

#slide[
  = The (non-Rust) lesson
  
  - Think about the problem
  - Sketch it out quickly
  - Sketch out the whole flow
  - Do not design the implementation
  
]


#slide[
  = Example
  
  - from my experience
  
]   

#slide[
  = Further listening
  
  - Hammock Driven Development - Rich Hickey 
  
]


#new-section[Second Lesson]

#slide[
  = Install
  https://www.rust-lang.org/learn/get-started
  ```bash
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  ```
]

#slide[
  = Init
  
  ```bash
  cargo init mycli
  ```
]

#slide[
  = Run
  
  ```bash
  cargo run
  ```
]

#slide[
  = The lesson
  
  - Start always with this as your first code
  
]

#new-section[Third Lesson]

#slide[
  = CLI Arguments
  
```rust
use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    dbg!(args);
}
```
]

#slide[
  = CLI Arguments
  
```bash
    cargo install --path .
```
]

#slide[
  = CLI Arguments
  
```bash
    mycli
```
]

#slide[
  = CLI Arguments
  
```bash
    cargo run -- <args>
```
]

#slide[
  = The lesson
  
Use the tools rust gives you

]

#slide[
  = Further reading
  
https://doc.rust-lang.org/book/ch12-00-an-io-project.html

]

