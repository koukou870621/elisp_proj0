(defun test15 ()
  (let ((score 0)
        (grade nil))
    (setq score (read-number "スコアを入力してください:"))
    (if (>= score 90)
        (setq grade ?A)
      (if (>= score 60)
          (setq grade ?B)
        (setq grade ?C)))
    (princ (format "%c\n" grade))))
(test15)