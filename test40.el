
(defvar N 10)

(defun test40 ()
  ""
  (let ((a '(0 1 2 3 4 5 6 7 8 9))
        (i 0)
        (tt 0))
    (message "元の配列は:")
    (let ((i 0))
      (while (< i N)
        (princ (format "%d " (nth i a)))
        (setq i (1+ i))))
    (let ((i 0))
      (while (< i (/ N 2))
        (progn
          (setq tt (nth i a))
          (setf (nth i a) (nth (- (1- N) i) a))
          (setf (nth (- (1- N) i) a) tt))
        (setq i (1+ i))))
    (princ (format "\nソートされた配列:\n"))
    (let ((i 0))
      (while (< i N)
        (princ (format "%d " (nth i a)))
        (setq i (1+ i))))))

(test40)
