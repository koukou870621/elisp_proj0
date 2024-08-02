(defun main ()
  (let ((i)
        (j)
        (k)))
  (message "\n")
  (setq i 1)
  (dotimes (i 5)
    (setq j 1)
    (dotimes (j 5)
      (setq k 1)
      (dotimes (k 5)
        (if (and (/= i k) (/= i j) (/= j k))
            (message "%d,%d,%d\n" i j k))
        (setq k (1+ k)))
      (setq j (1+ j)))
    (setq i (1+ i))))
(main)

(setq x 10)
(cond
 ((> x 20)
  (message "x is greater than 20"))
 ((> x 10)
  (message "x is greater than 10 but not greater than 20"))
 ((= x 10)
  (message "x is equal to 10"))
 ((< x 10)
  (message "x is less than 10")))

(dotimes (i 5)
  (message "i : %d" i))

(let ((i 0))
  (while (< i 5)
    (message "i : %d" i)
    (setq i (1+ i))))

(cl-loop for i from 0 below 5 do (message "cl-loop i : %d" i))

(dolist (element '(1 2 3 4 5))
  (message "element : %d" element))

(mapc (lambda (element) (message "Element: %d" element)) '(1 2 3 4 5))

(if t
    (message "This will always print."))

(let ((x 5))
  (if (> x 3)
      (message "x is greater than 3")
    (message "s is not greater than 3")))

(setq i 10)
(setq j (/ 168 i))

(require 'log4e)
(log4e:deflogger "hoge"
		 "%t [%l] %m"
		 "%H:%M:%S"
		 '((fatal . "fatal")
		   (error . "error")
		   (warn . "warn")
		   (info . "info")
		   (debug . "debug")
		   (trace . "trace")
		   )
		 )

(hoge--log-enable-logging)

(hoge--debug "start do hoge about '%s'" "hello")
(hoge--debug "xxx")
(hoge--info "xxx")
(hoge--log-open-log)
(hoge--log-set-level 'debug 'fatal)

(ert-deftest test-deleteCharacters ()
""
  (should (= (deleteCharacters "a" "aca") 3))
  ;(should (= (add -1 1) 0))
  ;; (should (= (add 0 0) 0))
  ;; (should (= (add 100 200) 300))	
  )
