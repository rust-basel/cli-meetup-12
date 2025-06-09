use colored::Colorize;
use inquire::Text;

pub fn run(maybe_text: Option<String>) {
    let answer = match maybe_text {
        Some(s) => s,
        None => wait_for_users(),
    };

    // colored
    let message = format!("Hello {answer}").green();
    println!("{message}")
}

fn wait_for_users() -> String {
    let description = Text::new("What is your name?")
        .with_help_message("Well you know your name right?")
        .prompt()
        .unwrap_or_default();
    description
}
