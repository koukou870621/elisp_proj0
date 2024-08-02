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
