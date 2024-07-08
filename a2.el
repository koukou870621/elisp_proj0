(defun my-scanf (format)
  "Demo function to show how to use my-scanf with multiple formats."
  (let ((input (read-string "Enter input: ")))
    (cond
     ((string= format "%d")
      (if (string-match "\\([-+]?[0-9]+\\)" input)
          (string-to-number (match-string 0 input))
        (error "Invalid input for integer format")))
     ((string= format "%f")
      (if (string-match "\\([-+]?[0-9]*\\.?[0-9]+\\)" input)
          (string-to-number (match-string 0 input))
        (error "Invalid input for float format")))
     (t
      (error "Unsupported format")))))

(error "xx")
(my-scanf "%d")

((let input
   "b")
 (string-match "a" input))

(defun my-scanf-demo ()
  "Demo function to show how to use my-scanf with multiple formats."
  (interactive)
  (let ((integer (my-scanf "%d"))
        (float (my-scanf "%f"))
        (string (my-scanf "%s")))
    (message "You entered integer: %d, float: %f, and string: %s"
             integer
             float
             string)))
