(setq custom-file "~/.emacs.custom.el")
(load custom-file)

;;
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; Evil mode https://github.com/emacs-evil/evil
;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)


;;; Appearance 
(tool-bar-mode 0)
(menu-bar-mode 0)
(setq inhibit-startup-screen t)

;;; IDO mode : https://www.masteringemacs.org/article/introduction-to-ido-mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-filename-at-point 'guess)
(ido-mode 1)


(global-display-line-numbers-mode)

(set-frame-font "Inconsolata 20" nil t)

;;; custom functions

(defun er-switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))


;(global-set-key (kbd "C-c C-c") #'er-switch-to-previous-buffer)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


;; Org-mode 

;; https://emacs.stackexchange.com/questions/28184/org-mode-how-can-i-point-to-python3-5-in-my-org-mode-doc 

(setq org-babel-python-command "python3")
(org-babel-do-load-languages
 'org-babel-load-languages '((python . t)))


(require 'org-bullets)
(add-hook 'org-mode-hook
	  (lambda ()
	    (org-bullets-mode t)))

(setq org-hide-leading-stars t)





