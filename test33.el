
(defvar MAX 1000)

(setq prime (make-vector MAX nil))

(defun isPrimeNaive (n)
  (catch 'my-block
    (if (<= n 1)
        (throw 'my-block 0))
    (let ((i 2))
      (while (< i n)
        (if (= 0 (mod n i))
            (throw 'my-block 0))
        (setq i (1+ i))))
    1))

(ert-deftest test_isPrimeNaive ()
  ""
  (should (= (isPrimeNaive 1) 0))
  (should (= (isPrimeNaive 2) 1))
  (should (= (isPrimeNaive 3) 1))
  (should (= (isPrimeNaive 4) 0)))

(defun isPrime (n)
  (catch 'my-block
    (if (<= n 1)
        (throw 'my-block 0))
    (if (= n 2)
        (throw 'my-block 1))
    (if (= 0 (mod n 2))
        (throw 'my-block 0))
    (setq limit (sqrt n))
    (let ((i 3))
      (while (<= i limit)
        (if (= 0 (mod n i))
            (throw 'my-block 0))
        (setq i (+ 2 i))))
    1))

(ert-deftest test_isPrime ()
  ""
  (should (= (isPrime 1) 0))
  (should (= (isPrime 2) 1))
  (should (= (isPrime 3) 1))
  (should (= (isPrime 4) 0))
  (should (= (isPrime 5) 1))
  (should (= (isPrime 6) 0))
  (should (= (isPrime 13) 1)))


(defun sieve ()
  (aset prime 0 0)
  (aset prime 1 0)
  (let ((i 2))
    (while (< i MAX)
      (aset prime i 1)
      (setq i (1+ i))))
  (setq limit (sqrt MAX))
  (let ((i 2))
    (while (<= i limit)
      (if (= 0 (aref prime i))
          (let ((j (* i i)))
            (while (<= j MAX)
              (aset prime j 0)
              (setq j (+ j i)))))
      (setq i (1+ i)))))

(defun isPrimeSieve (n)
  ((if (= n (aref prime n))
       1
     0)))

(defun test33 ()
  ""
  (sieve)
  (message "N=%d %d" 1 (isPrime 1))
  (message "N=%d %d" 2 (isPrime 2))
  (message "N=%d %d" 3 (isPrime 3))
  (message "N=%d %d" 4 (isPrime 4))
  (message "N=%d %d" 7 (isPrime 7))
  (message "N=%d %d" 9 (isPrime 9))
  (message "N=%d %d" 13 (isPrime 13))
  (message "N=%d %d" 17 (isPrime 17))
  (message "N=%d %d" 100 (isPrime 100))
  (message "N=%d %d" 23 (isPrime 23))
  (message "N=%d %d" 1 (isPrime 1)))

(test33)
