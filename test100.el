
(defstruct person name age gender)

(defstruct Stu ID math English C avergrade name)


(concat "aaa" "bbb")


(defun test_x ()
  ((let ((i 0))
     ())))


(defun test100 ()
  (let ((fp nil)
        (stu nil)
        (i nil)
        (avergrade 0))
    (progn
      (message "")
      (while (< i 5)
        (progn
          (read-string (concat "stu[" (number-to-string i) "].ID:")))
        ()))))

(test100)
