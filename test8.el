(defun test8 ()
  (let ((i 0)
        (j 0)
        (result 0)))
  (princ "\n")
  (let ((i 1))
    (while (< i 10)
      (let ((j 1))
        (while (<= j i)
          (progn
            (setq result (* i j))
            (princ
             (concat
              (number-to-string i)
              "*"
              (number-to-string j)
              "="
              (number-to-string result)
              "  ")))
          (setq j (1+ j)))
        (princ "\n"))
      (setq i (1+ i)))))

(test8)
