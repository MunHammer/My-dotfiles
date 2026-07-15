(require "helix/keymaps.scm")
(require "helix/configuration.scm")
(keymap (global)
  (normal
    (A-q ":q")
    (A-w ":w")
    (C-r ":config-reload")
    (tab ":bn")
    (S-tab ":bp"))
  (insert
    (C-backspace "delete_word_backward")
    (A-q "normal_mode")))
