
(defun test52()
  ""
  (let ((a 0)(b 0))
    (setq a #o77)
    (setq b (logior a 3))
    (message "bの値は%d" b)
    (setq b (logior b 7))
    (message "bの値は%d" b)
    )
  )

(test52)
