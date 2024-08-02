

(defun foo()
  ""
  (defvar x 0)
  (setq x (1+ x))
  (message "%d" x)
  )

(defun test41()
  ""
  (foo)
  (foo)
  (foo)
  )

(test41)
