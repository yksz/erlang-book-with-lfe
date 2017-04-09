(defmodule shop
  (export (cost 1)))

;; > (c "shop")
;; > (shop:cost 'apples)
;; 2
;; > (shop:cost 'oranges)
;; 5
;; > (shop:cost 'socks)
;; error
(defun cost
  (['oranges] 5)
  (['newspaper] 8)
  (['apples] 2)
  (['pears] 9)
  (['milk] 7))

