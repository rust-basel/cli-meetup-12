use std::io;

pub fn run(maybe_text: Option<String>) {
    let answer = match maybe_text {
        Some(s) => s,
        None => wait_for_users(),
    };

    println!("Hello {answer}")
}

fn wait_for_users() -> String {
    println!("What is your name?");

    loop {
        let mut answer = String::new();

        io::stdin()
            .read_line(&mut answer)
            .expect("Failed to read line");

        if !answer.is_empty() && answer != "\n" && answer != "\r\n" {
            return answer;
        }
    }
}
