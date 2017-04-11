(defmodule shop1
  (export (total 1)))

;; > (c "shop1")
;; > (shop1:total '())
;; 0
;; > (shop1:total '(#(milk 3)))
;; 21
;; > (shop1:total '(#(pears 6) #(milk 3)))
;; 75
;; > (set buy '(#(oranges 4) #(newspaper 1) #(apples 10) #(pears 6) #(milk 3)))
;; > (shop1:total buy)
;; 123
(defun total
  ([(cons (tuple what n) t)]
    (+ (* (shop:cost what) n) (total t)))
  (['()] 0))
