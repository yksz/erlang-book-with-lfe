(defmodule mylists
  (export all))

;; > (c "mylists")
;; > (set l '(1 3 10))
;; (1 3 10)
;; > (mylists:sum l)
;; 14
(defun sum
  ([(cons h t)] (+ h (sum t)))
  (['()] 0))

; > (c "mylists")
;; > (set l '(1 2 3 4 5))
;; (1 2 3 4 5)
;; > (mylists:mymap (lambda (x) (* 2 x)) l)
;; (2 4 6 8 10)
;; > (mylists:mymap (lambda (x) (* x x)) l)
;; (1 4 9 16 25)
(defun mymap
  ([_ '()] '())
  ([f (cons h t)] (cons (funcall f h) (mymap f t))))
