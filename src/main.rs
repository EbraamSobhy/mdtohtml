use pulldown_cmark::{Parser, html};
use std::fs;

fn main() -> std::io::Result<()> {
    let markdown = fs::read_to_string("README.md")?;
    let parser = Parser::new(&markdown);

    let mut html_output = String::new();
    html::push_html(&mut html_output, parser);

    fs::write("index.html", html_output)?;

    println!("Converted README.md -> index.html");
    Ok(())
}
