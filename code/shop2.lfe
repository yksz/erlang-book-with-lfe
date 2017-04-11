(defmodule shop2
  (export (total 1))
  (import (from lists (sum 1))))

;; > (c "shop2")
;; > (set buy '(#(oranges 4) #(newspaper 1) #(apples 10) #(pears 6) #(milk 3)))
;; > (shop2:total buy)
;; 123
(defun total (l)
  (sum (lists:map (match-lambda ([(tuple what n)] (* (shop:cost what) n))) l)))
