
(defmacro exchange(a b)
  `(let ((tt ,a))
     (setq ,a ,b)
     (setq ,b tt)
     ))

(defun test47()
  ""
  (let ((x 10)(y 20))
    (message "x=%d,y=%d" x y)
    (exchange x y)
    (message "x=%d,y=%d" x y)
    )
  )

(test47)
