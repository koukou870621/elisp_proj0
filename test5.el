(defun test5 ()
  (setq x 0)
  (setq y 0)
  (setq z 0)
  (setq tt 0)

  (message "数字を三つ入力してください。")
  (setq x (read-number "x:"))
  (setq y (read-number "y:"))
  (setq z (read-number "z:"))
  (if (> x y)
      (progn
        (setq tt z)
        (setq z x)
        (setq x tt)))

  (if (> x z)
      (progn
        (setq tt z)
        (setq z x)
        (setq x tt)))

  (if (> y z)
      (progn
        (setq tt y)
        (setq y z)
        (setq z tt)))
  (message "小さいものから大きいものへ並べ替えます:%d %d %d" x y z))
(test5)
