(defun add (a b)
  "return the sum of a and b"
  (+ a b))

(require 'ert)

(ert-deftest test-add ()
  "test the `add` function"
  (should (= (add 1 2) 3))
  (should (= (add -1 1) 0))
  (should (= (add 0 0) 0))
  (should (= (add 100 200) 300)))




(ert-deftest test-factorial ()
  ""
  (should (= (factorial 3) 6))
  (should (= (factorial 4) 6)))
