(require "helix/configuration.scm")
(require (prefix-in helix. "helix/commands.scm"))

(helix.theme "base16_transparent")

(scrolloff 10)
(mouse #f)
(shell (list "fish" "-c"))
(continue-comments #f)
; (gutters (list "diagnostics" "line-numbers" "spacer" "diff"))
(completion-replace #t)
(bufferline "multiple")
(popup-border "popup")
; trim-final-newlines = true
; trim-trailing-whitespace = true

(statusline
  #:left
  (list "mode" "version-control" "separator" "spinner" "read-only-indicator")

  #:center
  (list "file-name" "spacer" "file-modification-indicator")

  #:right
  (list "primary-selection-length" "diagnostics" "file-type" "file-encoding" "position")

  #:separator
  " LSP"

  ; These ones don't work for some reason
  #:mode.normal
  "NORMAL"
  #:mode.insert
  "INSERT"
  #:mode.select
  "SELECT"

  #:diagnostics
  (list "warning" "error" "info" "hint")
  #:workspace-diagnostics
  (list "warning" "error"))

(lsp (hash 'enable #t 'display-progress-messages #t 'display-inlay-hints #t))

(cursor-shape #:insert 'bar #:select 'underline)

(file-picker (fp-hidden #f))

(auto-save-after-delay-enable #t)
; (auto-save)
; [editor.auto-save.after-delay]
; enable = true
; timeout = 30000
(whitespace
  (ws-visible #t)
  (ws-chars
    (hash
      'space
      #\·

      'nbsp
      #\⍽

      'nnbsp
      #\␣

      'tab
      #\→

      'newline
      #\⏎

      'tabpad
      #\ )))
(indent-guides
  (ig-render #t)
  (ig-character #\▏)
  (ig-skip-levels 1))
(soft-wrap
  (sw-enable #t)
  (sw-wrap-indicator "⤷ "))
(inline-diagnostics-cursor-line-enable "hint")
(inline-diagnostics-other-lines-enable "warning")
