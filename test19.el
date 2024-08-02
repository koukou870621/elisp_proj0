(defun test19 ()
  (let ((i 0)
        (j 0)
        (k 0)
        (n 0)
        (sum 0)
        (a (make-vector 256 0)))
    (defconst N 1000)
    (setq i 2)
    (while (<= i N)
      (progn
        (setq sum 1)
        (aset a 0 1)
        (setq k 0)
        (setq j 2)
        (while (<= j (/ i 2))
          (if (= 0 (mod i j))
              (progn
                (setq sum (+ sum j))
                (setq k (1+ k))
                (aset a k j)))
          (setq j (1+ j)))
        (if (= i sum)
            (progn
              (princ
               (concat
                (number-to-string i)
                "="
                (number-to-string (aref a 0))))
              (setq n 1)
              (while (<= n k)
                (princ (concat "+" (number-to-string (aref a n))))
                (setq n (1+ n)))
              (princ "\n"))))
      (setq i (1+ i)))))

(test19)
