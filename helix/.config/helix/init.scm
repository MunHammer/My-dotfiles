;;; Config files
(require "config.scm")
(require "keymaps.scm")

;;; plugins
(require "forest/forest.scm")
(require "smooth-scroll/smooth-scroll.scm")
(require "streal/streal.scm")
;; plugin configuration
; forest
(forest-configure! 'left #:ignore (list ".git" "target"))
(forest-set-style! 'snacks)
