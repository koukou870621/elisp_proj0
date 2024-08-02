
(require 'test)

(defun test50 ()
  ""
  (let ((i 10)
        (j 20))
    (cond
     ((LAG i j)
      (message "%d は %dより大きいです。" i j))
     ((EQ i j)
      (message "%d は %dに等しいです。" i j))
     ((SMA i j)
      (message "%d は %d未満です。" i j))
     (t
      (message "値なし。")))))

(test50)
