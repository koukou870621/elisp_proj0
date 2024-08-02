
(defvar a nil)
(defvar b nil)
(defvar c nil)

(defun add ()
  ""
  (let ((a 3))
    (setq c (+ a b))))

(defun test44 ()
  ""
  (setq b 4)
  (setq a b)
  (add)
  (message "cの値は%dです" c))

(test44)
