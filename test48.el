
(defmacro LAG (a b)
  `(> ,a ,b))

(defmacro SMA (a b)
  `(< ,a ,b))

(defmacro EQ (a b)
  `(= ,a ,b))

(defun test48 ()
  ""
  (let ((i 0)
        (j 0))
    (message "二個数字を入力してください:")
    (setq i (read-number "i:"))
    (setq j (read-number "j:"))
    (message "%d %d" i j)
    (cond
     ((LAG i j)
      (message "%dは%dより大きい。" i j))
     ((EQ i j)
      (message "%dは%dに等しい。" i j))
     ((SMA i j)
      (message "%dは%dより小さい。" i j))
     (t
      (message "値無し。")))))

(test48)
