use std::env;

mod ask;
mod bye;
mod commands;
mod hello;

fn main() {
    let args: Vec<String> = env::args().collect();
    let command = commands::Command::from_args(&args);

    match command {
        commands::Command::Hello(text) => hello::run(text),
        commands::Command::Bye => bye::run(),
        commands::Command::None => bye::run(),
        commands::Command::Ask(text) => ask::run(text),
    }
}
