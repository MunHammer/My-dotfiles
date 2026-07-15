(require "helix/keymaps.scm")
(require "helix/configuration.scm")
(keymap (global)
  (normal
    ;; plugins
    (space
      ; forest
      (e ":forest-open")
      ; streal
      (o ":streal-open"))
    ; smooth scroll
    (pageup ":page-up-smooth")
    (C-u ":half-page-up-smooth")
    (pagedown ":page-down-smooth")
    (C-d ":half-page-down-smooth")
    ;; builtins
    (A-q ":q")
    (A-w ":w")
    (C-r ":config-reload")
    (tab ":bn")
    (S-tab ":bp"))
  (insert
    (C-backspace "delete_word_backward")
    (A-q "normal_mode")))
