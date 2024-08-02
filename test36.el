
(defun test36 ()
  ""
  (catch 'return
    (let ((i 2)
          (j 0)
          (k 0)
          (n 0))
      (while (<= i 100)
        (progn
          (setq k (sqrt i))
          (catch 'return_inner
            (setq j 2)
            (while (<= j k)
              (if (= 0 (mod i j))
                  (throw 'return_inner nil))
              (setq j (1+ j))))
          (if (> j k)
              (progn
                (princ (format "%d " i))
                (setq n (1+ n))
                (if (= 0 (mod n 5))
                    (message "")))))
        (setq i (1+ i))))))

(test36)
