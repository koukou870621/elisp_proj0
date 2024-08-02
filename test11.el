(defun test11 ()
  (let ((f1 1)
        (f2 1)
        (i 0))
    (let ((i 1))
      (while (<= i 20)
        (progn
          (princ
           (concat
            "     "
            (number-to-string f1)
            "       "
            (number-to-string f2)))
          (if (= 0 (mod i 2))
              (princ "\n"))
          (setq f1 (+ f1 f2))
          (setq f2 (+ f1 f2)))
        (setq i (1+ i))))))
(test11)
