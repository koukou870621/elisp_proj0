
(defun test53()
  ""
  (let ((a 0)(b 0))
    (setq a #o77)
    (setq b (logxor a 3))
    (message "bの値は %d" b)
    (setq b (logxor b 7))
    (message "bの値は %d" b)
    )
  )

(test53)
