;日期：2023年12月9日
;作者：fanyb
(defun c:lsp_02 ()
	(setvar "cmdecho" 0)
  (setq pt1 (getpoint "\n选取第一交点："))
  (setq pt3 (getcorner pt1 "\n选取第二交点："))
  (setq pt2 (list (car pt3) (cadr pt1)))
  (setq pt4 (list (car pt1) (cadr pt3)))
  (setq rr (getdist pt1 "\n圆的半径<5>:"))
  (if (null rr) (setq rr 5.0))
  (command "circle" pt1 rr)
  (setq en1 (entlast))
  (command "line" (polar pt1 pi (+ rr 3)) (polar pt1 0 (+ rr 3)) "")
  (setq en2 (entlast))
  (command "line" (polar pt1 (/ pi 2) (+ rr 3)) (polar pt1 (* pi 1.5) (+ rr 3)) "")
  (setq en3 (entlast))
  (command "copy" en1 en2 en3 "" "m" pt1 pt2 pt3 pt4 "")
  (prin1)
)
