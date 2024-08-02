
(defmacro LAG (a b)
  `(> ,a ,b))

(defmacro SMA (a b)
  `(< ,a ,b))

(defmacro EQ (a b)
  `(= ,a ,b))

(provide 'test)
