(defun judgement-text (s)
  ;; 先頭の文字が大文字でなければ"No"を返す
  (if (not (char= (char s 0) (char-upcase (char s 0))))
      "No"
      ;; 先頭の文字が大文字であれば、残りの文字が全て小文字かチェックする
      (loop for i from 1 below (length s)
            do (if (not (char-equal (char s i) (char-downcase (char s i))))
                   (return "No"))  ; 1つでも大文字があれば"No"を返して終了
            finally (return "Yes"))))  ; 全て小文字なら"Yes"を返す