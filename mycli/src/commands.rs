pub enum Command {
    Hello(String),
    Bye,
    Ask(Option<String>),
    None,
}

impl Command {
    pub fn from_args(args: &[String]) -> Command {
        if args.len() < 2 {
            Command::None
        } else {
            match args[1].as_str() {
                "hello" => Command::Hello(args[2].clone()),
                "bye" => Command::Bye,
                "ask" => Command::Ask(args.get(2).cloned()),
                _ => Command::None,
            }
        }
    }
}
