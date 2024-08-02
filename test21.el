(defun test21 ()
  (let ((day 0)
        (x1 0)
        (x2 0))
    (setq day 9)
    (setq x2 1)
    (while (> day 0)
      (progn
        (setq x1 (* 2 (1+ x2)))
        (setq x2 x1)
        (setq day (1- day))))
    (message "合計は%d" x1)))

(test21)
