
(defun test51 ()
  ""
  (let ((a #o77)
        (b 0))
    (setq b (logand a 3))
    (message "a & b(decimal)は%d" b)
    (setq b (logand b 7))
    (message "a & b(decimal)は%d" b)))

(test51)


