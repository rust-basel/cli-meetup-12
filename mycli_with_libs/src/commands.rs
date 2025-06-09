use clap::{Parser, Subcommand};

use crate::{ask, bye, hello, indicate_showcase};

pub fn run() {
    let cli = Cli::parse();

    match cli.command {
        Some(Commands::Hello { hello }) => hello::run(hello),
        Some(Commands::Bye {}) => bye::run(),
        Some(Commands::Ask { name }) => ask::run(name),
        Some(Commands::Indicate {}) => indicate_showcase::run(),
        None => bye::run(),
    };
}

/// Simple program to greet a person
#[derive(Parser, Debug)]
#[command(version, about, long_about = None)]
struct Cli {
    #[command(subcommand)]
    command: Option<Commands>,
}

#[derive(Subcommand, Debug)]
enum Commands {
    Hello {
        #[arg(short, long)]
        hello: String,
    },

    Bye {},

    Ask {
        #[arg(short, long)]
        name: Option<String>,
    },

    Indicate {},
}
