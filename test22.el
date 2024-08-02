(defun test22 ()
  (let ((i nil)
        (j nil)
        (k nil))
    (setq i ?x)
    (while (<= i ?z)
      (progn
        (setq j ?x)
        (while (<= j ?z)
          (if (not (equal i j))
              (progn
                (setq k ?x)
                (while (<= k ?z)
                  (if (and (not (equal i k)) (not (equal j k)))
                      (if (and (not (equal i ?x))
                               (not (equal k ?x))
                               (not (equal k ?z)))
                          (message "順序は次のとおりです: a--%c\tb--%c\tc--%c"
                                   i
                                   j
                                   k)))
                  (setq k (1+ k)))))
          (setq j (1+ j))))
      (setq i (1+ i)))))

(test22)
