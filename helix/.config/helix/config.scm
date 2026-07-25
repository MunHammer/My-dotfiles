(require "helix/configuration.scm")
(require (prefix-in helix. "helix/commands.scm"))

(helix.theme "base16_transparent")

(scrolloff 10)
(mouse #f)
(shell (list "fish" "-c"))
(continue-comments #f)
; (gutters (list "diagnostics" "line-numbers" "spacer" "diff"))
(line-number "relative")
(completion-replace #t)
(bufferline "multiple")
(popup-border "popup")
(rainbow-brackets #t)
; trim-final-newlines = true
; trim-trailing-whitespace = true

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
