(defun test12 ()
  (let ((i 0)
        (j 0)
        (count 0))
    (let ((i 101))
      (while (<= i 200)
        (progn
          (setq j 2)
          (catch 'break
            (while (< j i)
              (if (= 0 (mod i j))
                  (throw 'break i))
              (setq j (1+ j)))))
        (if (>= j i)
            (progn
              (setq count (1+ count))
              (princ (concat (number-to-string i) " "))
              (if (= 0 (mod count 5))
                  (princ "\n"))))
        (setq i (1+ i))))))
(test12)
