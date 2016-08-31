;;Add these to init.el or whereever to
;;get language support for clojure in all
;;the things.

;;org-mode syntax highlighting extensions
(require 'org)
(require 'ob-clojure)
(require 'ox-latex)
(setq org-latex-listings 'minted)
;(setq org-export-latex-listings 'minted)
;(add-to-list 'org-export-latex-packages-alist '("" "minted"))
(setq org-src-fontify-natively t)

;; extending support for other languages so that we can execute them
;; in org mode.
;; http://www.johndcook.com/blog/2012/02/09/python-org-mode/
;; Add more extensions below.
(org-babel-do-load-languages
    'org-babel-load-languages '((python . t) 
				(R . t)
				(sh . t)
				(emacs-lisp . t)
				(clojure . t)
				(C . t)))
;;beamer support
(add-to-list 'org-latex-classes
            '("beamer"
              "\\documentclass\[presentation\]\{beamer\}"
              ("\\section\{%s\}" . "\\section*\{%s\}")
              ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
              ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))
