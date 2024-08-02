
(defvar N 3)

(defun test38 ()
  ""
  (let ((i 0)
        (j 0)
        (a (make-vector N nil))
        (sum 0))
    (dotimes (i N)
      (aset a i (make-vector N 0)))
    (message "マトリックスを入力してください(3*3)：")
    (let ((i 0))
      (while (< i N)
        (let ((j 0))
          (while (< j N)
            (aset
             (aref a i) j (read-number (format "a[%d][%d]:" i j)))
            (setq j (1+ j))))
        (setq i (1+ i))))
    (let ((i 0))
      (while (< i N)
        (setq sum (+ sum (aref (aref a i) i)))
        (setq i (1+ i))))
    (message "対角線の和は: %d" sum)))

(test38)
