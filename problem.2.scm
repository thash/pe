(define (fib n)
  (cond ((= n 1) 1)
        ((= n 2) 2)
        (else (+ (fib (- n 1)) (fib (- n 2))))))

;; return list
;; fib入れる値はどうする...streamしたい
(define (fib-list-under n)
  (let ((m 3))
    ;;(if (< n (fib m)) 'end (fib (+ m 1)))))
    (fib (+ m 1))))

(display
  (fib-list-under 20)
  )

