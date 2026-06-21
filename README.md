# Markdown to HTML Converter

A fast and lightweight Markdown to HTML converter written in Rust using the `pulldown-cmark` crate.

This tool reads a Markdown file (`README.md` by default), converts it into HTML, and writes the result to an output file (`index.html`).

## Features

* Fast Markdown parsing
* Pure Rust implementation
* Simple and lightweight
* Easy to extend
* Generates standards-compliant HTML
* Minimal dependencies

## Requirements

* Rust 1.70 or later
* Cargo package manager

## Installation

Clone the repository:

```bash
git clone https://github.com/EbraamSobhy/mdtohtml.git
cd mdtohtml
```

Build the project:

```bash
cargo build --release
```

## Dependencies

Add the following dependency to your `Cargo.toml`:

```toml
[dependencies]
pulldown-cmark = "0.13"
```

## Usage

Create a Markdown file:

```markdown
# Hello World

This is **Markdown**.

- Fast
- Safe
- Simple
```

Run the application:

```bash
cargo run
```

The converter will generate:

```text
index.html
```

and display:

```text
Converted README.md -> index.html
```

## Example

### Input

```markdown
# Rust Markdown Converter

Convert Markdown files into HTML using Rust.
```

### Output

```html
<h1>Rust Markdown Converter</h1>
<p>Convert Markdown files into HTML using Rust.</p>
```

## Project Structure

```text
.
├── Cargo.toml
├── README.md
├── src
│   └── main.rs
└── index.html
```

## Source Code

```rust
use pulldown_cmark::{html, Parser};
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
```

## Contributing

Contributions are welcome.

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Open a pull request

## License

This project is licensed under the MIT License.

## Acknowledgments

* Rust Programming Language
* pulldown-cmark developers
* CommonMark specification contributors
