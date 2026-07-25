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
(moka-bufferline-configure!
  #:mode
  'multiple
  #:active
  (moka-buffer-style #:bg "#e9d6ff" #:fg "#0f0f0f")
  #:inactive
  (moka-buffer-style #:bg "#9986cf" #:fg "#3c4043")
  #:gap
  0
  #:icons?
  #t
  #:colored-icons?
  #t
  #:dirty?
  #t)
(moka-bufferline-enable!)
(moka-enable!)
