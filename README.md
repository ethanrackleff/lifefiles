# E-Ink Optimized Arch & Sway Configuration

These dotfiles are designed for optimal readability on black-and-white **E-Ink** displays. Instead of relying on hue differences, it uses text styles (**bold**, *italics*, and *underlines*) to differentiate syntax elements in neovim. This approach ensures code is clear and structured even in monochrome, following best practices from minimal-color themes (using font styles rather than color alone). Animations are minimized to ensure minimal E-ink "ghosting"


## Design Rationale

### Monochrome Emphasis

E-Ink screens don't show color. So, for each syntax group in neovim, we give a unique combination of styling. Elements that would normally be distinguished by color are instead indicated by font weight or underlining. (Colors are still defined in the theme for compatibility, but an external palette will map them appropriately for e-ink or color use.). A boolean (e.g. `useEInk`) controls this behavior. When e-ink mode is enabled, additional bold/italic/underline styles are applied to the highlight groups. This allows the scheme to be used on regular displays (with colors providing distinction) or on e-ink devices (with styles providing distinction) consistently.
---

## Neovim: Syntax Groups and Styles

Below is a breakdown of how different syntax categories are highlighted in this theme and why:

### Keywords (Control Statements)

Keywords like `if`, `else`, `for`, `while`, `return`, etc. are in **bold** text. This makes control flow and language constructs stand out clearly as structural markers in the code. Bold keywords draw the eye, indicating the code’s logical blocks.

### Functions and Methods

Function names and method names are styled in **bold** and *underlined* text. This double emphasis highlights function definitions and calls as important entities. Bold weight signifies importance, and the underline further distinguishes them from other bold text (like keywords). This is especially useful in e-ink, ensuring function names are immediately recognizable.

### Types and Classes

Type names, class names, structs, and user-defined types are also **bold** and *underlined*. They represent important constructs (like data types or classes) and are given the same high emphasis as functions. Using the same style for types and classes helps them stand out as key elements (nouns in the code) just as functions are the verbs. (Built-in or primitive types may be *italicized* as well to differentiate them slightly, reflecting their special status in the language.)

### Constants and Literals

Constants and literal values (such as numbers, strings, booleans, character literals) are *underlined* in this scheme. Underlining all literal values differentiates them from variable names or keywords, which are not underlined. For example, numeric constants and string literals appear with an underline, clearly marking them as fixed values. This consistent underline for literals serves as a visual cue that these are immediate values. In some cases, constants or predefined values may also appear *italicized* (especially if they are special built-in constants), to subtly set them apart from regular variables.

### Comments

Comments are set in *italic* text. Italics visually deemphasize the comments, indicating that they are ancillary to the code logic. This matches common convention (comments are often grayed or italicized) and on e-ink it ensures comments are distinct from actual code. The slanted italic font makes comments easily identifiable without using color, so you can ignore them when scanning code or quickly spot them when needed.

### Preprocessor Directives and Macros

In languages that have preprocessor commands or macros (for example, `#include`, `#define` in C/C++), those are styled **bold** and *italic*. The bold draws attention (since these directives can significantly affect code), and italic indicates that they're a kind of “meta” code (handled before the main code logic). This combination differentiates them from normal language keywords — they appear important but also a bit *different* (thanks to the italic) from regular control-flow keywords.

### Operators and Punctuation

Operators (`+`, `-`, `=`, `==`, etc.) and punctuation (commas, semicolons, braces) generally use the normal font (no special styling) in this e-ink theme. This is intentional: operators are ubiquitous and giving them special styles could clutter the text. By keeping them unstyled (or just using a subtle color if available), the scheme ensures that the emphasis stays on keywords, names, and values rather than every symbol. (Matched pairs like parentheses may still be underlined when highlighted, such as the highlight on a matching bracket, to make them easier to spot when the cursor is near, e.g., `MatchParen` is underlined.)

### Errors and Warnings

Error messages or problematic code (for instance, text flagged by LSP diagnostics as errors) are marked with **bold**, *italic*, and *underline* all at once, in addition to a bright color. This triple emphasis makes errors impossible to miss on an e-ink display. Bold draws attention, the underline adds urgency, and italic can indicate the text is out-of-place or exceptional. For example, if a line has a syntax error, it might appear undercurled or underlined and also in bold italic, so even without red coloring, you can quickly locate it. Warnings and hints may use a subset (e.g. just underline or italic) along with a different color, as they are less severe than errors.

### Todo/Note Annotations

Special comments like `TODO`, `FIXME`, or other note tags are highlighted in **bold italic**. They stand out from regular comments (which are only italic) by the added bold weight. This way, on an e-ink device, TODOs pop out to catch your attention when scanning through code, helping you not to overlook these annotations. The combination signifies that it's a comment (*italic*) but also important (**bold**).

### UI Elements and Miscellaneous

Most editor interface elements (line numbers, status lines, menus, etc.) remain styled primarily by color (as defined in the palette) or minimal styling. One exception is the current line number (`CursorLineNr`), which is in **bold** to clearly highlight the active line. In an e-ink context, a bold line number is an effective way to pinpoint the cursor location without color. For diff and git signs, the scheme uses background or reverse video to indicate added/removed lines, which translates well even on grayscale. These choices ensure that even peripheral information is conveyed without relying solely on color.

--
##Alacritty

---
##Wofi

---
##Waybar

---

##Sway

---

## Conclusion

By using a combination of *underline*, **bold**, and *italic* text styles for syntax groups, this colorscheme makes code structure readable on e-ink devices where color-based distinction is not available. This approach echoes how early monochrome editors and modern accessibility-minded themes handle syntax highlighting – relying on text decorations to convey meaning. With `useEInk` mode, you can switch this styling on or off depending on your display.

In summary, when e-ink mode is active, you can expect:

* **Bold** text to denote key language constructs (keywords, important identifiers).
* *Underlines* to mark constants and standout elements (literals, function names, types).
* *Italics* to mark secondary or contextual elements (comments, built-ins).
* Combinations (like **bold+underline** or **bold+italic**) for elements that deserve extra emphasis or special treatment (e.g., functions, macros, errors).

This ensures that code remains **highly readable and well-organized in black-and-white**, without sacrificing the informational richness that syntax highlighting provides.
