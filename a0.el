(let ((i 0))
  (while (< i 10)
    (message "i = %d" i)
    (setq i (1+ i))))


(defun main ()
  (let ((i 0)
        (j 0)
        (k 0)))
  (message "\n")
  (setq i 1)
  (while (< i 5)
    (setq j 1)
    (while (< j 5)
      (setq k 1)
      (while (< k 5)
        (if (and (/= i k) (/= i j) (/= j k))
            (message "%d,%d,%d\n" i j k))
        (setq k (1+ k)))
      (setq j (1+ j)))
    (setq i (1+ i))))

(main)