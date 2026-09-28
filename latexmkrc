# LuaLaTeX with automatic Biber and cross-reference reruns.
$pdf_mode = 4;
$lualatex = 'lualatex -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1 %O %S';
$out_dir = 'build';
@default_files = ('thesis.tex');

# Preserve normal incremental builds; cleanup is an explicit make target.
$clean_ext .= ' bbl run.xml glg glo gls glsdefs acn acr alg ist';
