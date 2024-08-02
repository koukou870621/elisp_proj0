(defun test0 ()
  (message "あなたの純利益は:\n")
  (setq i (read-number "Enter a number:"))
  (setq bonus1 (* 100000 0.1))
  (setq bonus2 (+ bonus1 (* 100000 0.075)))
  (setq bonus4 (+ bonus2 (* 200000 0.05)))
  (setq bonus6 (+ bonus4 (* 200000 0.03)))
  (setq bonus10 (+ bonus6 (* 400000 0.015)))

  (cond
   ((<= i 100000)
    (setq bonus (* i 0.1)))
   ((<= i 200000)
    (setq bonus (+ bonus1 (* (- i 100000) 0.075))))
   ((<= i 400000)
    (setq bonus (+ bonus2 (* (- i 200000) 0.05))))
   ((<= i 600000)
    (setq bonus (+ bonus4 (* (- i 400000) 0.03))))
   ((<= i 1000000)
    (setq bonus (+ bonus6 (* (- i 600000) 0.015))))
   ((> i 1000000)
    (setq bonus (+ bonus10 (* (- i 1000000) 0.01)))))

  (message "としての手数料:%f" bonus))


(test0)
