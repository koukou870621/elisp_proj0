



(defun fact (j)
  (let ((sum 0))
    (if (= j 0)
        (setq sum 1)
      (setq sum (* j (fact (1- j)))))
    sum))

(defun test26 ()
  (let ((i 0))
    (setq i 0)
    (while (< i 6)
      (message "%d!=%d" i (fact i))
      (setq i (1+ i)))))

(test26)
