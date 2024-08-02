
(makunbound 'MAX)
(makunbound 'MIN)

(defconst MAX 1)

(defmacro MAXIMUM (x y)
  `(if (> ,x ,y)
       ,x
     ,y))

(defmacro MINIMUM (x y)
  `(if (> ,x ,y)
       ,y
     ,x))


(defun test49 ()
  ""
  (let ((a 10)
        (b 20))
    (if (boundp 'MAX)
        (message "大きい方の数値は%dです。" (MAXIMUM a b))
      (message "小さい方の数値は%dです。" (MINIMUM a b)))

    (if (not (boundp 'MIN))
        (message "小さい方の数値は%dです。" (MINIMUM a b))
      (message "大きい方の数値は%dです。" (MAXIMUM a b)))

    (makunbound 'MAX)
    (if (boundp 'MAX)
        (message "大きい方の数値は%dです。" (MAXIMUM a b))
      (message "小さい方の数値は%dです。" (MINIMUM a b)))

    (defconst MIN 1)
    (if (not (boundp 'MIN))
        (message "小さい方の数値は%dです。" (MINIMUM a b))
      (message "大きい方の数値は%dです。" (MAXIMUM a b)))

    ))

(test49)
