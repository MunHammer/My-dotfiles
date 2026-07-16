(require "helix/configuration.scm")

(define (define-simple-server name args)
  (define-lsp name
    (command name)
    (args args)))
(define (define-simple-language name servers)
  (define-language name
    (auto-format #t)
    (indent
      (tab-width 4)
      (unit " "))
    (language-servers servers)))
;; Harper
(define-lsp "harper-ls"
  (command "harper-ls")
  (args '("--stdio"))
  (config
    (hash
      'harper-ls.linters.SpelledNumbers
      #t
      'harper-ls.linters.BoringWords
      #t)))
; Rust
(define-lsp "rust-analyzer"
  (command "rust-analyzer")
  (timeout 10)
  (config
    (hash
      'cargo.feature
      "all"

      'check.command
      "clippy")))
(define-language "rust"
  (auto-format #t)
  (text-width 75)
  (diagnostic-severity "info")
  (indent
    (tab-width 4)
    (unit " "))
  (language-servers (list "rust-analyzer" "harper-ls")))
; Toml
(define-simple-server "taplo" (list "lsp" "stdio"))
(define-language "toml"
  (auto-format #t)
  (diagnostic-severity "info")
  (indent
    (tab-width 4)
    (unit " "))
  (language-servers (list "taplo" "harper-ls"))
  (formatter
    (command "taplo")
    (args (list "fmt" "-")))
  ; roots couldn't be done for some reason
  )
; Scheme
(define-simple-server "steel-language-server" '())
(define-language "scheme"
  (formatter (command "schemat"))
  (auto-format #t)
  (language-servers '("steel-language-server")))
; Python
(define-lsp "basedpyright"
  (command "basedpyright-langserver")
  (args '("--stdio"))
  (config (hash
           'basedpyright.analysis.typeCheckingMode
           "strict"
           'autoSearchPaths
           #t)))
(define-simple-server "ruff" '("server"))

(define-simple-language "python" '("basedpyright" "ruff" "harper-ls"))

; Markdown
(define-simple-language "markdown" '("marksman" "harper-ls"))
; Git commit
(define-simple-language "git-commit" '("harper-ls"))
