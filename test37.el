
(defconst N 10)
(defun test37 ()
  ""
  (let ((i 0)
        (j 0)
        (a (make-vector N 0))
        (temp 0))
    (message "10個の数字を入力してください：")
    (while (< i N)
      (aset a i (read-number (format "%d:" i)))
      (setq i (1+ i)))
    (setq i 0)
    (while (< i (1- N))
      (progn
        (setq min i)
        (setq j (1+ i))
        (while (< j N)
          (if (> (aref a min) (aref a j))
              (setq min j))
          (setq j (1+ j)))
        (if (/= min i)
            (progn
              (setq temp (aref a min))
              (aset a min (aref a i))
              (aset a i temp))))
      (setq i (1+ i)))

    (message "並べ替えた結果は:")
    (setq i 0)
    (while (< i N)
      (princ (format "%d " (aref a i)))
      (setq i (1+ i)))))


(test37)
