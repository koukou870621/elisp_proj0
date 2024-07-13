(defun deleteCharacters (str charSet)
  (catch 'early-return
    (let ((hash 0)
          (i 0)
          (currentIndex 0))
      (setq hash (make-vector 256 0))
      (type-of hash)
      (if (null charSet)
          (throw 'early-return str))
      (klog--debug "charSet:%s" charSet)
      (while (< i (length charSet))
        (progn
          (aset hash (aref charSet i) 1)
          (klog--debug "hash:%s" hash))
        (setq i (1+ i)))
      (setq i 0)
      (while (< i (length str))
        (progn
          (klog--debug "i:%d" i)
          (klog--debug "str:%s" str)
          (klog--debug "aref str i:%s" (aref str i))
          (klog--debug
           "(aref hash (aref str i)):%s" (aref hash (aref str i)))
          (klog--debug
           "(not (aref hash (aref str i))):%s"
           (not (aref hash (aref str i))))
          (if (zerop (aref hash (aref str i)))
              (progn
                (klog--debug "currentIndex:%d" currentIndex)
                (aset str currentIndex (aref str i))
                (setq currentIndex (1+ currentIndex)))))
        (setq i (1+ i)))
      (klog--debug "str:%s" str)
      (setq str (substring str 0 currentIndex))
      (klog--debug "str:%s" str)
      str)))


(defun test32 ()
  (let ((s "a")
        (s2 "aca"))
    (message "s:%s" s)
    (message "s2:%s" s2)
    (klog--debug s2)
    (setq str2 (concat (deleteCharacters s2 s)))
    (message "str2:%s" str2)))

(test32)
