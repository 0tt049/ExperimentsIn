(TeX-add-style-hook
 "README"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("biblatex" "backend=bibtex") ("pstricks" "all") ("xy" "all")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "biblatex"
    "pstricks"
    "xy"))
 :latex)

