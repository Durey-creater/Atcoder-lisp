(defparameter *s* nil)

(defun get-input ()
    (format t "Please enter a string:")
    (force-output)
    (let ((*s*  (read-line)))))

(defun split-string-by-dot()
    (let ((start 0) end (result '())))
    (loop
    