
(defmacro TRUE ()
  ""
  1)

(defmacro FALSE()
  ""
  0)

(defmacro SQ (x)
  `(*,x,x))


(defun test46 ()
  ""
  (let ((num 0)
        (again 1))
    (message "値が５０未満の場合、プログラムは終了します。")
    (while (/= 0 again)
      (progn
        (setq num (read-number "num："))
	(princ (format "\n数字を入力してください："))
	(princ (format "%d" num))
        (message "数値の二乗は%dです" (SQ num))
        (if (>= num 50)
            (setq again (TRUE))
          (setq again (FALSE)))))))

(test46)


