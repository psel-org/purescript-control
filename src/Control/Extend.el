;; -*- lexical-binding: t; -*-

(defvar Control.Extend.arrayExtend
  (lambda (f)
    (lambda (xs)
      (apply 'vector
             (seq-map-indexed (lambda (_ i) (funcall f (seq-take xs i))) xs)))))
