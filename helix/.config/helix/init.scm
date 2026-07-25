;;; Config files
(require "config.scm")
(require "keymaps.scm")
(require "languages.scm")

;;; plugins
(require "forest/forest.scm")
(require "smooth-scroll/smooth-scroll.scm")
(require "streal/streal.scm")
(require "moka/moka.scm")
;; plugin configuration
; forest
(forest-configure! 'left #:ignore (list ".git" "target"))
(forest-set-style! 'snacks)
; moka
(moka-configure!
  #:mode-normal
  "NORMAL"
  #:mode-insert
  "INSERT"
  #:mode-select
  "SELECT"

  ;; For future diagnostic stuff
  ; #:diagnostics
  ; (list "warning" "error" "info" "hint")
  ; #:workspace-diagnostics
  ; (list "warning" "error"))

  #:sections
  (list
    (moka-section (list
                   (moka-segment 'mode)
                   (moka-segment 'git-branch)
                   ;; (moka-segment (lambda () "LSP"))
                   ;; spinner
                   ; read-only indicator
                   )
      #:align
      'left)
    (moka-section (list
                   (moka-segment 'file))
      #:align
      'center)
    (moka-section (list
                   (moka-segment 'primary-selection-length)
                   ; diagnostics
                   (moka-segment 'file-type)
                   ; file-encoding
                   (moka-segment 'position))
      #:align
      'right)))
(moka-enable!)
