;;; BEGIN boilerplate code -- ignore 

(include-book "testing" :dir :teachpacks)
(include-book "doublecheck" :dir :teachpacks)
(include-book "arithmetic-5/top" :dir :system)

;;; END boilerplate code -- start paying attention!

;;; Short introduction to lists (see also the video on
;;; lists and the tutorial notebooks in the first
;;; announcement)
;;;
;;; The empty list is written NIL
;;;
;;; Yes, that's the same as "false".  Bummer, but
;;; that's the way it is.
;;;
;;; If A, B, C, ... are any objects, then
;;; (LIST A B C ...) is the list that contains those
;;; objects. It can also be written as '(A B C ...)
;;; if A, B, C, ... are constants, e.g., numbers.
;;;
;;; If A and B are variables, then (LIST A B) is the
;;; list that contains the values of A and B, while
;;; '(A B) is the list that contains the letters A 
;;; and B. Kinda like the variable X is different
;;; than "X" in C++ or Java. If you're haaving trouble
;;; with this, think in Java-ish languages of the 
;;; difference between
;;;   abc + i + def
;;; and
;;;   "abc" + i + "def"
;;;
;;; If L is a list and E is some object, then the
;;; list (CONS E L) is the same as L, but with E
;;; added to the front:
;;;
;;;     (CONS 1 NIL)          = '(1)
;;;     (CONS 1 (LIST 2 3 4)) = '(1 2 3 4)
;;;     (CONS 1 '(2 3 4))     = '(1 2 3 4)
;;;
;;; (CONSP L) is true is L is a non-empty list,
;;; and false otherwise.
;;;
;;; (ENDP L) is the opposite. It's false is L
;;; is a non-empty list, and true otherwise.
;;; It's similar to (ZP n) but for lists.
;;; 
;;; The function FIRST returns the first element
;;; of a list, and REST returns all but the first
;;; element.
;;;
;;;     (FIRST '(1))           = 1
;;;     (REST '(1))            = NIL
;;;     (FIRST '(1 2 3 4))     = 1
;;;     (REST '(1 2 3 4))      = '(2 3 4)
;;;     (FIRST (LIST 1 2 3 4)) = 1
;;;     (REST (LIST 1 2 3 4))  = '(2 3 4)
;;;
;;; There are also functions called SECOND,
;;; THIRD, FOURTH, etc. that work like you
;;; would expect. The function LAST is a
;;; little strange because it returns a list
;;; with the last element (if any).
;;;
;;;     (SECOND '(1 2 3 4))    = 2
;;;     (THIRD '(1 2 3 4))     = 3
;;;     (LAST '(1 2 3 4))      = '(4)
;;;
;;; The function (APPEND X Y) returns a new list
;;; that has the elements of X followed by the
;;; elements of Y.
;;;
;;;     (APPEND '(1 3 5) '(2 4))   = '(1 3 5 2 4)
;;;     (APPEND NIL '(1 2 3))      = '(1 2 3)
;;;
;;; Finally, the function (LEN L) returns the
;;; number of elements in the list L.
;;; 
;;;     (LEN '(1 3 5))       = 3
;;;     (LEN '(1 2 3 4 5))   = 5
;;;     (LEN '((1 2 3 4) 5)) = 2
;;;

;;; For the rest of this assignment, you may use any of the list
;;; functions described above, but you may not use any other
;;; built-in ACL2 functions.

;;; PART 1: Map
 
;;; TODO-1: Define (add1 L)

(defun add1 (L)
  ;; returns a list that has x1 for each x in L
  ;; e.g., (add1 '(1 2 3)) = '(2 3 4)
  )

;;; TODO-2: Define (square L)

(defun square (L)
  ;; returns a list that has x*x for each x in L
  )

;;; TODO-3: Define (addk k L)

(defun addk (k L)
  ;; returns a list that has k+x for each x in L
  )

;;; TODO-4: Use defproperty to prove that
;;; the len of squaring a list is the same as
;;; the length of the original list.

(defproperty len-square
  )

;;; PART 2: Filter
 
;;; TODO-5: Define (multiples k L)

(defun factors (k L)
  ;; returns a list with all elements from L that
  ;; are factors of k, i.e., all elements from L
  ;; that are evenly divide k.
  ;; remamber that you can (integerp (/ x y)) to check
  ;; that y evenly divides x.
  )

;;; TODO-6: Use defproperty to prove that
;;; the result of finding the factors of k
;;; in the result of appending L1 to L2 is
;;; the same as the result of appending the
;;; factors of k in L1 to the factors 
;;; of k in L2

(defproperty factors-append
  )

;;; TODO-7: Define (range n)

(defun range (n)
  ;; returns a list with the integers from 1 to n.
  ;; E.g., (range 3) = (1 2 3)
  ;; Note: some people find it easier to return the list 
  ;; in the reverse order, e.g., (wrong-range 3) = '(3 2 1)
  ;; Start with that, if you want, then modify it
  ;; slightly to get the list in the right order. But
  ;; remember you can only use the list functions 
  ;; that are mentioned above, not other list functions
  ;; that you may run into in the internet (e.g., you
  ;; cannot use REVERSE).)
  )

;;; TODO-8: Define (primep n)

(defun primep (n)
  ;; returns true when n is prime and false otherwise.
  ;; Recall that a number is prime if it is an integer
  ;; greater than 1, such that it's a multiple of only
  ;; 1 and itself. You can use any of the functions
  ;; you've already defined above.
  )

;;; TODO-9: Define (primes-up-to n)

(defun primes-up-to (n)
  ;; returns a list of the prime numbers up to n.
  ;; E.g., (primes-up-to-n 10) = '(2 3 5 7)
  ;; (primes-up-to-n 13) = '(2 3 5 7 11 13)
  ;; Remember: You can always define helper
  ;; functions. But you must have unit tests
  ;; for each function you define.
  )

;;; PART 10: Fold/Reduce
 
;;; TODO-10: Define (sumlist L)

(defun sumlist (L)
  ;; returns the sum of the elements in L
  )

;;; TODO-11: Use defproperty to prove that
;;; ther result of adding upp all the elements
;;; of appending L1 and L2 is the same as the
;;; sum of the elements of L1 plus the sum of
;;; the elements of L2

(defproperty sumlist-append
  )

;;; TODO-12: Define (prodlist L)

(defun prodlist (L)
  ;; returns the product of the elements in L
  )

;;; TODO-13: Use defproperty to prove a
;;; property about prodlist similar to TODO-11.

(defproperty prodlist-append
  )

;;; TODO-14: Define (factorial n)

(defun factorial (n)
  ;; returns the factorial of n
  ;; Use the functions you've defined so far
  ;; to dedfine factorial. Partial (but not full)
  ;; credit will be given for a working factorial
  ;; functions, but for full credit you must use
  ;; the functions defined above.
  )

;;; TODO-15: Define (maxlist L)

(defun maxlist (L)
  ;; returns the maximum element of L
  ;; careful with this one! what is the maximum
  ;; of an empty list?
  ;; For this exercise, just return NIL for an
  ;; empty list, ok?
  )