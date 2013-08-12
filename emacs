;;; XEmacs backwards compatibility file
;;;(setq user-init-file
;;;      (expand-file-name "init.el"
;;;			(expand-file-name ".xemacs" "~")))
;;;(setq custom-file
;;;      (expand-file-name "custom.el"
;;;			(expand-file-name ".xemacs" "~")))

;;;(load-file user-init-file)
;;;(load-file custom-file)

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(require 'evil)
(evil-mode 1)
