
(require 'flycheck)

(flycheck-define-checker 64tass
  "A 6502 assembly syntax checker using 64tass."
  :command ("64tass" source "--no-output" "-I" (eval (file-name-directory buffer-file-name)))
  :error-patterns
  ((error line-start (file-name) ":" line ":" column ": " (optional "fatal ") "error: " (message) line-end))
  :modes paw64-mode
  :enabled (lambda () (eq 'paw64-mode major-mode)))

(provide 'flycheck-64tass)
