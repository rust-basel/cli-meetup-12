use comfy_table::{Attribute, Cell, Color, ContentArrangement, Table, presets::UTF8_FULL};

pub fn run() {
    let mut table = Table::new();
    table
        .load_preset(UTF8_FULL)
        .set_content_arrangement(ContentArrangement::Dynamic)
        .set_width(300)
        .set_header(vec![
            Cell::new("Index").fg(Color::Green),
            Cell::new("Message"),
        ])
        .add_row(vec![
            Cell::new("1").add_attribute(Attribute::SlowBlink),
            Cell::new("2").fg(Color::Green),
        ])
        .add_row(vec![
            Cell::new("Bye").add_attribute(Attribute::SlowBlink),
            Cell::new("Bye Bye Bye").fg(Color::Green),
        ]);

    println!("{table}");
}
