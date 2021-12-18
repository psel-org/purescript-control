;; -*- lexical-binding: t; -*-

(defvar Test.Control.Extend.foldl
  (lambda (f)
    (lambda (init)
      (lambda (xs)
        (seq-reduce (lambda (b a) (funcall (funcall f b) a))
                    xs
                    init)))))
