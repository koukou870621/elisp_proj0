
(defun test39 ()
  ""
  (let ((a '(1 4 6 9 13 16 19 28 40 100 nil))
        (temp1 0)
        (temp2 0)
        (number 0)
        (end 0)
        (i 0)
        (j 0))
    (message "元の配列は:")
    (let ((i 0))
      (while (< i 10)
        (princ (format "%4d" (nth i a)))
        (setq i (1+ i))))
    (princ (format "\n新しい番号を挿入する:"))
    (setq number (read-number "number:"))
    (setq end (nth 9 a))
    (if (> number end)
        (setf (nth 10 a) number)
      (catch 'break
        (let ((i 0))
          (while (< i 10)
            (if (> (nth i a) number)
                (progn
                  (setq temp1 (nth i a))
                  (setf (nth i a) number)
                  (let ((j (1+ i)))
                    (while (< j 11)
                      (progn
                        (setq temp2 (nth j a))
                        (setf (nth j a) temp1)
                        (setq temp1 temp2))
                      (setq j (1+ j))))
                  (throw 'break nil)))
            (setq i (1+ i))))))
    (let ((i 0))
      (while (< i 11)
        (princ (format "%4d" (nth i a)))
        (setq i (1+ i))))))

(test39)
