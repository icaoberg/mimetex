> [!WARNING]
> **This repository is deprecated and no longer maintained.**
> The upstream project by John Forkosh is available at http://www.forkosh.com/mimetex.html

# mimetex

A fork of [mimetex](http://www.forkosh.com/mimetex.html) by John Forkosh.

MimeTeX is a CGI program that parses a LaTeX math expression and immediately emits the corresponding GIF image. It does not require TeX or its fonts — it is a single standalone CGI binary with no external dependencies.

## Status

This fork is no longer maintained. For active alternatives consider:

- [MathJax](https://www.mathjax.org/) — JavaScript-based LaTeX rendering in the browser
- [KaTeX](https://katex.org/) — Fast client-side LaTeX rendering
- [latex2svg](https://github.com/Moonbase59/latex2svg) — LaTeX to SVG conversion

## Quick Start

```sh
# Compile with anti-aliased GIF output (recommended)
cc -DAA mimetex.c gifsave.c -lm -o mimetex.cgi

# Or without anti-aliasing
cc -DGIF mimetex.c gifsave.c -lm -o mimetex.cgi

# Or for MIME xbitmaps
cc -DXBITMAP mimetex.c -lm -o mimetex.cgi
```

Move `mimetex.cgi` to your server's `cgi-bin/` directory and `mimetex.html` to `htdocs/`.

See `README` for the full original documentation.

## License

GPL v3 or later. See `COPYING`.
