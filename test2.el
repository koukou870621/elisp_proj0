
(defun test2 ()
  (setq i (float 5))
  (let ((i 0.0)))
  (let ((bonus1 0.0)
        (bonus2 0.0)
        (bonus4 0.0)
        (bonus6 0.0)
        (bonus10 0.0)
        (bonus 0.0)))
  (let ((i (read-string "あなたの純利益は: ")))
    (setq i (string-to-number i))
    (setq bonus1 (* 100000 0.1))
    (setq bonus2 (+ bonus1 (* 100000 0.075)))
    (setq bonus4 (+ bonus2 (* 200000 0.05)))
    (setq bonus6 (+ bonus4 (* 200000 0.03)))
    (setq bonus10 (+ bonus6 (* 400000 0.015)))

    (cond
     ((<= i 100000)
      (setq bonus (* i 0.1)))
     ((<= i 200000)
      (setq bonus (+ (* (- i 100000) 0.075) bonus1)))
     ((<= i 400000)
      (setq bonus (+ bonus2 (* 0.05 (- i 200000)))))
     ((<= i 600000)
      (setq bonus (+ bonus4 (* 0.03 (- i 400000)))))
     ((<= i 1000000)
      (setq bonus (+ bonus6 (* (- i 600000) 0.015))))
     ((> i 1000000)
      (setq bonus (+ bonus10 (* 0.01 (- i 1000000))))))
    (message "としての手数料: bonus=%f"  bonus)))



(test2)
