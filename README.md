# Master's thesis

A neutral master's-thesis skeleton using the unofficial TU Dortmund
[TUDoThesis](https://github.com/maxnoe/tudothesis) class, LuaLaTeX, and BibLaTeX/Biber.

## Build

Run commands from the repository root. Install a TeX Live distribution (MacTeX on
macOS) with `latexmk`, LuaLaTeX, and Biber available on your `PATH`.

```sh
make             # Thesis: build/thesis.pdf
make examples    # Formatting reference: build/examples/formatting.pdf
make watch       # Rebuild the thesis when files change; Ctrl-C stops watching
make clean       # Remove intermediate files, keeping the PDFs
make distclean   # Remove intermediate files and generated PDFs
```

`latexmk` by itself also builds the thesis. The engine and common build options
are configured in `latexmkrc`; the Makefile delegates to that configuration.
Builds are incremental, and Biber runs automatically when required. Glossaries
use `\makenoidxglossaries`, so no `xindy` or `makeglossaries` step is needed.

The initial thesis has no citations or glossary entries. Empty-bibliography and
empty-glossary warnings are expected until sources and terms are added and used.

### TeX packages

`tex-packages.txt` lists explicit TeX Live packages for the template and its build
tools; `tlmgr` resolves their dependencies. It is a package list, not a version lock.
With a current TeX Live installation managed by `tlmgr`, install them with:

```sh
xargs tlmgr install < tex-packages.txt
```

Use the package manager that owns your TeX installation. In TeX Live 2023,
`scrhack` is included in `koma-script`; newer distributions ship it as a
[separate package](https://ctan.org/pkg/scrhack). Keep TeX Live and its package
repository on matching releases.

Edit `metadata.tex` for your thesis information, `thesis.tex` for document order,
and the chapter files in `content/` for the text. `examples/formatting.tex` is a
separate reference for figures, tables, citations, acronyms, and mathematics.

Before submission, review the binding correction, title/reviewer details, and the
current university requirements. The retained declaration PDF is a blank form;
replace it with the appropriate completed declaration.

## Attribution

The class and original template were created by Maximilian Nöthe, drawing on
Konrad Dungs's thesis files. Their MIT license notice is retained in `LICENSE`.
The unofficial template does not establish university submission requirements.
