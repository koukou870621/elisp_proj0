; テストは失敗しました
(defun test43 ()			
  ""
  (let ((i 0)
        (num 2))
    (while (< i 3)
      (progn
        (message "num変数は%d" num)
	(setq num (1+ num))
	(defvar num 1)
	(message "組み込みモジュール番号変数は%dです。" num)
	(setq num (1+ num))
	)
      (setq i (1+ i)))))

(test43)
