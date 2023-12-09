;日期：2023年12月9日
;作者：fanyb
(defun c:lsp_01 ()
	(setvar "cmdecho" 0)
  (setq pt1 (getpoint "\n你好，请输入一个点："))
  (setq ww (getdist pt1 "\n宽度：<100>:"))
  (if (null ww) (setq ww 100.0))
  (setq hh (getdist pt1 "\n高度<50>:"))
  (if (null hh) (setq hh 50.0))
  (setq ww3 (/ ww 3))
  (setq hh2 (/ hh 2))
  (setq pt2 (polar pt1 0 ww))
  (setq pt3 (polar pt2 (/ pi 2) hh))
  (setq pt4 (polar pt3 pi ww3))
  (setq pt5 (polar pt4 (* pi 1.5) hh2))
  (setq pt6 (polar pt5 pi ww3))
  (setq pt7 (polar pt6 (/ pi 2) hh2))
  (setq pt8 (polar pt7 pi ww3))
  (command "pline" pt1 pt2 pt3 pt4 pt5 pt6 pt7 pt8 "c") 
  (prin1)
)



