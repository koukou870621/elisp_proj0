
(defun reverse2 (s)
  ""
  (let ((len (length s))
        (p s)
        (pos 0)
        (i 0)
        (c nil))
    (while (<= i (- (/ len 2) 1))
      (progn
        (setq c (aref s (+ pos i)))
        (aset s (+ pos i) (aref s (- (1- (+ pos len)) i)))
        (aset s (- (1- (+ pos len)) i) c)
        (setq i (1+ i))))))

(defun test35 ()
  ""
  (setq s "www.runoob.com")
  (message "'%s' =>" s)
  (reverse2 s)
  (message "'%s'" s))

(test35)
