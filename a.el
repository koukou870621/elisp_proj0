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

(defun test1 ()
  (setq i 0)
  (setq j 0)
  (setq m 0)
  (setq n 0)
  (setq x 0)
  (let ((i 1))
    (while (< i (+ 1 (/ 168 2)))
      (if (= 0 (mod 168 i))
          ((setq j (/ 168 i))
           (if ((and (> i j)
                     (= 0 (mod (+ i j) 2))
                     (= 0 (mod (- i j) 2)))
                ((setq m (/ (+ i j) 2))
                 (setq n (/ (- i j) 2))
                 (setq x (- (* n n) 100))
                 (message "%d+100=%d*%d\n" x n n)
                 (message "%d+268=%d*%d\n" x m m))))))
      (setq i (1+ i)))))

(test1)

(if t
    (message "This will always print."))

(let ((x 5))
  (if (> x 3)
      (message "x is greater than 3")
    (message "s is not greater than 3")))


(setq i 10)
(setq j (/ 168 i))


(defun test1 ()
  (setq i 0)
  (setq j 0)
  (setq m 0)
  (setq n 0)
  (setq x 0)
  (message "===================%s=================="
           (current-time-string))
  (let ((i 1))
    (while (< i (+ 1 (/ 168 2)))
      ;(message "i=%d" i)
      (if (= 0 (mod 168 i))
          (progn
            (setq j (/ 168 i))
            (if (and (> i j)
                     (= 0 (mod (+ i j) 2))
                     (= 0 (mod (- i j) 2)))
                (progn
                  (setq m (/ (+ i j) 2))
                  (setq n (/ (- i j) 2))
                  (setq x (- (* n n) 100))
                  (message "%d+100=%d*%d\n" x n n)
                  (message "%d+268=%d*%d\n" x m m)))))
      (setq i (1+ i)))))

(test1)


(defun test2 ()
  (setq day 0)
  (setq month 0)
  (setq year 0)
  (setq sum 0)
  (setq leap 0)
  (message "\n年、月、日を「年、月、日」の形式で入力してください。（2015,12,10）\n")
  (setq year (read-number "year:"))
  (setq month (read-number "month:"))
  (setq day (read-number "day:"))
  (cond
   ((= month 1)
    (setq sum 0))
   ((= month 2)
    (setq sum 31))
   ((= month 3)
    (setq sum 59))
   ((= month 4)
    (setq sum 90))
   ((= month 5)
    (setq sum 120))
   ((= month 6)
    (setq sum 151))
   ((= month 7)
    (setq sum 181))
   ((= month 8)
    (setq sum 212))
   ((= month 9)
    (setq sum 243))
   ((= month 10)
    (setq sum 273))
   ((= month 11)
    (setq sum 304))
   ((= month 12)
    (setq sum 334))
   (t
    (message "data error")))
  (setq sum (+ sum day))
  (if (or (= 0 (mod year 400))
          (and (= 0 (mod year 4)) (/= 0 (mod year 100))))
      (setq leap 1)
    (setq leap 0))
  (if (and (= leap 1) (> month 2))
      (setq sum (1+ sum)))
  (message "これは年の%d日です。" sum)
  (message "\n"))

(test2)


(defun test3 ()
  (setq x 0)
  (setq y 0)
  (setq z 0)
  (setq tt 0)

  (message "数字を三つ入力してください。")
  (setq x (read-number "x:"))
  (setq y (read-number "y:"))
  (setq z (read-number "z:"))
  (if (> x y)
      (progn
        (setq tt z)
        (setq z x)
        (setq x tt)))

  (if (> x z)
      (progn
        (setq tt z)
        (setq z x)
        (setq x tt)))

  (if (> y z)
      (progn
        (setq tt y)
        (setq y z)
        (setq z tt)))
  (message "小さいものから大きいものへ並べ替えます:%d %d %d" x y z))
(test3)


(defun test4 ()
  (message "文字を出力するには*を使用します。")
  (message "****")
  (message "*")
  (message "*")
  (message "****"))

(test4)


(defun test5 ()
  (setq a 176)
  (setq b 219)
  (message "%c%c%c%c%c" b a a a b)
  (message "%c%c%c%c%c" a b a b a)
  (message "%c%c%c%c%c" a a b a a)
  (message "%c%c%c%c%c" a b a b a)
  (message "%c%c%c%c%c" b a a a b))

(test5)


(defun test6 ()
  (let ((i 0)
        (j 0)
        (result 0)))
  (princ "\n")
  (let ((i 1))
    (while (< i 10)
      (let ((j 1))
        (while (<= j i)
          (progn
            (setq result (* i j))
            (princ
             (concat
              (number-to-string i)
              "*"
              (number-to-string j)
              "="
              (number-to-string result)
              "  ")))
          (setq j (1+ j)))
        (princ "\n"))
      (setq i (1+ i)))))

(test6)

(defun test9 ()
  (let ((i 0)
        (j 0)))
  (message "=======================")
  (let ((i 0))
    (while (< i 8)
      (let ((j 0))
        (while (< j 8)
          (if (= 0 (mod (+ i j) 2))
              (progn
                (princ "aa"))
            (princ "  "))
          (setq j (1+ j)))
        (princ "\n"))
      (setq i (1+ i)))))

(test9)


(defun test10 ()
  (let ((i 0)
        (j 0)))
  (princ "\1\1\n")
  (let ((i 1))
    (while (< i 11)
      (let ((j 1))
        (while (<= j i)
          (princ "aa")
          (setq j (1+ j))))
      (princ "\n")
      (setq i (1+ i)))))
(test10)

(defun test11 ()
  (let ((f1 1)
        (f2 1)
        (i 0))
    (let ((i 1))
      (while (<= i 20)
        (progn
          (princ
           (concat
            "     "
            (number-to-string f1)
            "       "
            (number-to-string f2)))
          (if (= 0 (mod i 2))
              (princ "\n"))
          (setq f1 (+ f1 f2))
          (setq f2 (+ f1 f2)))
        (setq i (1+ i))))))
(test11)

(defun test12 ()
  (let ((i 0)
        (j 0)
        (count 0))
    (let ((i 101))
      (while (<= i 200)
        (progn
          (setq j 2)
          (catch 'break
            (while (< j i)
              (if (= 0 (mod i j))
                  (throw 'break i))
              (setq j (1+ j)))))
        (if (>= j i)
            (progn
              (setq count (1+ count))
              (princ (concat (number-to-string i) " "))
              (if (= 0 (mod count 5))
                  (princ "\n"))))
        (setq i (1+ i))))))
(test12)


(defun test13 ()
  (let ((i 0)
        (x 0)
        (y 0)
        (z 0))
    (let ((i 100))
      (while (< i 1000)
        (progn
          (setq x (mod i 10))
          (setq y (mod (/ i 10) 10))
          (setq z (mod (/ i 100) 10))
          (if (= i (+ (* x x x) (* y y y) (* z z z)))
              (princ (concat (number-to-string i) "\n"))))
        (setq i (1+ i))))))

(test13)


(defun test14 ()
  (let ((n 0)
        (i 0))
    (setq n (read-number "整数を入力してください:"))
    (princ (concat (number-to-string n) "="))
    (let ((i 2))
      (while (<= i n)
        (while (= 0 (mod n i))
          (progn
            (princ (concat (number-to-string i) ""))
            (setq n (/ n i))
            (if (/= n 1)
                (princ "*"))))
        (setq i (1+ i))))))

(test14)


(defun test15 ()
  (let ((score 0)
        (grade nil))
    (setq score (read-number "スコアを入力してください:"))
    (if (>= score 90)
        (setq grade ?A)
      (if (>= score 60)
          (setq grade ?B)
        (setq grade ?C)))
    (princ (format "%c\n" grade))))
(test15)

(defun test16 ()
  (let ((a 0)
        (b 0)
        (tt 0)
        (r 0)
        (n 0))
    (setq a (read-number "a:"))
    (setq b (read-number "b:"))
    (if (< a b)
        (progn
          (setq tt b)
          (setq b a)
          (setq a tt)))
    (setq r (mod a b))
    (setq n (* a b))
    (while (/= r 0)
      (progn
        (setq a b)
        (setq b r)
        (setq r (mod a b))))
    (message "これら二つの数値の最大公約数は%dで、最小公倍数は%dです\n" b (/ n b))))
(test16)

(defun test17 ()
  (let ((c nil)
        (letters 0)
        (spaces 0)
        (digits 0)
        (others 0))
    (while (/= (setq c (read-char "いくつかの文字を入力してください:")) ?\r)
      (cond
       ((or (and (>= c ?a) (<= c ?z)) (and (>= c ?A) (<= c ?Z)))
        (setq letters (1+ letters)))
       ((and (>= c ?0) (<= c ?9))
        (setq digits (1+ digits)))
       ((char-equal c ?\s)
        (setq spaces (1+ spaces)))
       (t
        (setq others (1+ others)))))
    (message "文字=%d、数字=%d、スペース=%d、その他=%d\n"
             letters
             digits
             spaces
             others)))

(test17)


(defun test18 ()
  (let ((s 0)
        (a 0)
        (n 0)
        (tt 0))
    (setq a (read-number "aを入力してください:"))
    (setq n (read-number "nを入力してください:"))
    (setq tt a)
    (while (> n 0)
      (progn
        (setq s (+ s tt))
        (setq a (* a 10))
        (setq tt (+ tt a))
        (setq n (1- n))))
    (message "a+aa+...=%d\n" s)))

(test18)


(defun test19 ()
  (let ((i 0)
        (j 0)
        (k 0)
        (n 0)
        (sum 0)
        (a (make-vector 256 0)))
    (defconst N 1000)
    (setq i 2)
    (while (<= i N)
      (progn
        (setq sum 1)
        (aset a 0 1)
        (setq k 0)
        (setq j 2)
        (while (<= j (/ i 2))
          (if (= 0 (mod i j))
              (progn
                (setq sum (+ sum j))
                (setq k (1+ k))
                (aset a k j)))
          (setq j (1+ j)))
        (if (= i sum)
            (progn
              (princ
               (concat
                (number-to-string i)
                "="
                (number-to-string (aref a 0))))
              (setq n 1)
              (while (<= n k)
                (princ (concat "+" (number-to-string (aref a n))))
                (setq n (1+ n)))
              (princ "\n"))))
      (setq i (1+ i)))))

(test19)

(defun test20 ()
  (let ((h 0.0)
        (s 0.0))
    (setq h 100.00000)
    (setq s 100.00000)
    (setq h (/ h 2))
    (setq i 2)
    (while (<= i 10)
      (progn
        (setq s (+ s (* 2 h)))
        (setq h (/ h 2)))
      (setq i (1+ i)))
    (message "１０回目の着地時、合計%fメートルを通過し、１０回目のリバウンドの高さは%fメートルでした。" s h)))

(test20)


(defun test21 ()
  (let ((day 0)
        (x1 0)
        (x2 0))
    (setq day 9)
    (setq x2 1)
    (while (> day 0)
      (progn
        (setq x1 (* 2 (1+ x2)))
        (setq x2 x1)
        (setq day (1- day))))
    (message "合計は%d" x1)))

(test21)


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


(defun test23 ()
  (let ((i 0)
        (j 0)
        (k 0))
    (setq i 0)
    (while (<= i 3)
      (progn
        (setq j 0)
        (while (<= j (- 2 i))
          (princ " ")
          (setq j (1+ j)))
        (setq k 0)
        (while (<= k (* 2 i))
          (princ "*")
          (setq k (1+ k)))
        (message ""))
      (setq i (1+ i)))
    (setq i 0)
    (while (<= i 2)
      (progn
        (setq j 0)
        (while (<= j i)
          (princ " ")
          (setq j (1+ j)))
        (setq k 0)
        (while (<= k (- 4 (* 2 i)))
          (princ "*")
          (setq k (1+ k)))
        (message ""))
      (setq i (1+ i)))))

(test23)

(defun test24 ()
  (let ((i 0)
        (tt 0)
        (sum 0.0)
        (a 2.0)
        (b 1.0))
    (setq i 1)
    (while (<= i 20)
      (progn
        (setq sum (+ sum (/ a b)))
        (setq tt a)
        (setq a (+ a b))
        (setq b tt))
      (setq i (1+ i)))
    (message "%9.6f" sum)))

(test24)


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


(defun factorial (n)
  (let ((result 1)
        (i 1))
    (while (<= i n)
      (setq result (* result i))
      (setq i (1+ i)))
    result))

(ert-deftest test-factorial ()
  ""
  (should (= (factorial 3) 6))
  (should (= (factorial 4) 6)))

(defun test25 ()
  (let ((sum 0))
    (setq i 1)
    (while (<= i 20)
      (setq sum (+ sum (factorial i)))
      (setq i (1+ i)))
    (message "1 + 2! + 3! + ... + 20!合計は： %d\n" sum)))

(test25)


(defun fact (j)
  (let ((sum 0))
    (if (= j 0)
        (setq sum 1)
      (setq sum (* j (fact (1- j)))))
    sum))

(defun test26 ()
  (let ((i 0))
    (setq i 0)
    (while (< i 6)
      (message "%d!=%d" i (fact i))
      (setq i (1+ i)))))

(test26)


(defun palin (n)
  (let ((next 0))
    (if (<= n 1)
        (progn
          (setq next (read-char ""))
          (princ "結果を逆順に入力する:")
          (princ (concat (char-to-string next))))
      (progn
        (setq next (read-char ""))
        (palin (1- n))
        (princ (concat (char-to-string next)))))))

(defun test27 ()
  (let ((i 5))
    (princ "五文字を入力してください：")
    (palin i)
    (message "")))

(test27)


(defun age (n)
  (let ((c 0))
    (if (= n 1)
        (setq c 10)
      (setq c (+ 2 (age (1- n)))))
    c))

(defun test28 ()
  (message "%d" (age 5)))

(test28)


(defun test29 ()
  (let ((a 0)
        (b 0)
        (c 0)
        (d 0)
        (e 0)
        (x 0))
    (message "五文字を入力してください:")
    (setq x (read-number ""))
    (setq a (/ x 10000))
    (setq b (/ (mod x 10000) 1000))
    (setq c (/ (mod x 1000) 100))
    (setq d (/ (mod x 100) 10))
    (setq e (mod x 10))
    (cond
     ((/= a 0)
      (message "は五桁の数字で、その逆の順序は: %d %d %d %d %d" e d c b a))
     ((/= b 0)
      (message "は四桁の数字で、その逆の順序は:" e d c b))
     ((/= c 0)
      (message "は三桁の数字で、その逆の順序は：" e d c))
     ((/= d 0)
      (message "は二桁の数字で、その逆の順序は：" e d))
     ((/= e 0)
      (message "は１桁の数字で、その逆の順序は：" e)))))

(test29)

(defun test30 ()
  (let ((ge 0)
        (shi 0)
        (qian 0)
        (wan 0)
        (x 0))
    (message "五文字を入力してください:")
    (setq x (read-number "x:"))
    (setq wan (/ x 10000))
    (setq qian (/ (mod x 10000) 1000))
    (setq shi (/ (mod x 100) 10))
    (setq ge (mod x 10))
    (if (and (= ge wan) (= shi qian))
        (message "これは回文数字です")
      (message "これは回文数字ではありません"))))

(test30)


(defun test31 ()
  (let ((i 0)
        (j 0))
    (message "")
    (setq i (read-char "i:"))
    (cond
     ((= i ?m)
      (message "monday"))
     ((= i ?w)
      (message "wednesday"))
     ((= i ?f)
      (message "friday"))
     ((= i ?t)
      (progn
        (message "次の文字を入力してください")
        (setq j (read-char "j:"))
        (if (= j ?u)
            (message "tuesday"))
        (if (= j ?h)
            (message "thursday"))))
     ((= i ?s)
      (progn
        (message "次の文字を入力してください")
        (setq j (read-char "j:"))
        (if (= j ?a)
            (message "saturday"))
        (if (= j ?u)
            (message "sunday"))))
     (t
      (message "error")))))

(test31)


(defun deleteCharacters (str charSet)
  (catch 'early-return
    (let ((hash 0)
          (i 0)
          (currentIndex 0))
      (setq hash (make-vector 256 0))
					;(hoge--debug hash)
					;(hoge--debug (type-of hash))
      (type-of hash)
      (hoge--debug "hash:%s" (type-of hash))
      (hoge--debug "hash values:%s" (prin1-to-string hash))
      (hoge--debug "str:%s" str)
      (hoge--debug "charSet:%s" charSet)
      (if (null charSet)
          (throw 'early-return str))
      (while (< i (length charSet))
        (aset hash (aref charSet i) 1)
        (setq i (1+ i)))
      (setq i 0)
      (while (< i (length str))
        (if (not (aref hash (aref str i)))
            (progn
              (aset str currentIndex (aref str i))
              (setq currentIndex (1+ currentIndex))))
        (setq i (1+ i)))
      (aset str currentIndex 0)
      str)))

(defun test32 ()
  (let ((s "a")
        (s2 "aca"))
    (message "s:%s" s)
    (message "s2:%s" s2)
    (hoge--debug "s:%s" s)
    (hoge--debug "s2:%s" s2)
    (princ (concat (deleteCharacters s2 s)))))

(test32)


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
