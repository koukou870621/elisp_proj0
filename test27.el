(defun palin (n)
  (let ((next 0))
    (if (<= n 1)
        (progn
          (setq next (read-char ""))
          (princ "結果を逆順に入力する:")
          (princ (concat (char-to-string next))))
      (progn
        (setq next (read-char ""))
        (palin (1- n))
        (princ (concat (char-to-string next)))))))

(defun test27 ()
  (let ((i 5))
    (princ "五文字を入力してください：")
    (palin i)
    (message "")))

(test27)



