
(defun factorial (n)
  (let ((result 1)
        (i 1))
    (while (<= i n)
      (setq result (* result i))
      (setq i (1+ i)))
    result))

(defun test25 ()
  (let ((sum 0))
    (setq i 1)
    (while (<= i 20)
      (setq sum (+ sum (factorial i)))
      (setq i (1+ i)))
    (message "1 + 2! + 3! + ... + 20!合計は： %d\n" sum)))

(test25)
