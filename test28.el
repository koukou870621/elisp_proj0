(defun age (n)
  (let ((c 0))
    (if (= n 1)
        (setq c 10)
      (setq c (+ 2 (age (1- n)))))
    c))

(defun test28 ()
  (message "%d" (age 5)))

(test28)
