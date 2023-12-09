;日期：2023年12月9日
;作者：fanyb
(defun C:lsp_03()
    (setvar "cmdecho" 0)
    (setq pt1 (getpoint "\n 第一个角点"))
    (setq pt3 (getcorner pt1 "\n另一个角点："))
    (setq pt2 (list (car pt3) (cadr pt1)))
    (setq pt4 (list (car pt1) (cadr pt3)))
    (command "pline" pt1 pt3 pt2 pt4 "c")
    (setq dd (/ (distance pt1 pt4) 2))
    (setq ang1 (angle pt2 pt3))
    (setq ang2 (angle pt4 pt1))
    (command "arc" pt2 "e" (polar pt2 ang1 dd) "a" -180)
    (command "arc" (polar pt2 ang1 dd) "e" pt3 "a" -180)
    (command "arc" pt4 "e" (polar pt4 ang2 dd) "a" -180)
    (command "arc" (polar pt4 ang2 dd) "e" pt1 "a" -180)
    (prin1)
    )