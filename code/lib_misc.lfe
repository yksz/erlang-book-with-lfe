(defmodule lib_misc
  (export (sum 1)
          (for 3)))

;; > (c "lib_misc")
;; > (lib_misc:sum '(1 2 3 4 5))
;; 15
(defun sum (l) (sum l 0))
(defun sum
  (['() n] n)
  ([(cons h t) n] (sum t (+ h n))))

;; > (c "lib_misc")
;; > (lib_misc:for 1 10 (lambda (i) i))
;; (1 2 3 4 5 6 7 8 9 10)
;; > (lib_misc:for 1 10 (lambda (i) (* i i)))
;; (1 4 9 16 25 36 49 64 81 100)
(defun for (i max f)
  (if (=:= i max)
      (cons (funcall f max) '())
      (cons (funcall f i) (for (+ i 1) max f))))
