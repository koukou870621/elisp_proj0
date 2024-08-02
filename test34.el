
(defun hello_world ()
  ""
  (message "Hello, world!"))

(defun three_hellos ()
  ""
  (let ((counter 1))
    (while (<= counter 3)
      (hello_world)
      (setq counter (1+ counter)))))

(defun test34 ()
  ""
  (three_hellos))

(test34)
