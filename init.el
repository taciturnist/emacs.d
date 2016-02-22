;; ==================================================
;;  Environment
;; ==================================================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("045251e7ff119a8b065b4cb0072067eb2f297acc44a9e36407e6ff165e35c528" "4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "12b4427ae6e0eef8b870b450e59e75122d5080016a9061c9696959e50d578057" "ad950f1b1bf65682e390f3547d479fd35d8c66cafa2b8aa28179d78122faa947" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" default)))
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(initial-scratch-message
   ";; Monomaniac at w0rk"))

;; autloads
(if (locate-library "ediff-trees")
    (autoload 'ediff-trees "ediff-trees" "Start an tree ediff" t))

;; autcompile
;; (defun autocompile nil
;;   "compile itself if ~/.emacs.d/init.el"
;;   (interactive)
;;   (require 'bytecomp)
;;   (let ((dotemacs (expand-file-name "~/.emacs.d/init.el")))
;;     (if (string= (buffer-file-name) (file-chase-links dotemacs))
;;       (byte-compile-file dotemacs))))

;; (add-hook 'after-save-hook 'autocompile)

;; C-x C-j opens dired with the cursor right on the file you're editing
(require 'dired-x)

;; ==================================================
;;  paren mode
;; ==================================================

(setq show-paren-delay 0)           ; how long to wait?
(show-paren-mode t)                 ; turn paren-mode on
(setq show-paren-style 'expression) ; alternatives are 'parenthesis' and 'mixed'


;;elpa
;(add-to-list 'load-path (file-name-as-directory
;                         (expand-file-name "~/.emacs.d/elpa/")))

;; ==================================================
;;  Buffer Frame 
;; ==================================================
;;Toolbar and menu bar distract you from learning the key
;;bindings (i.e. becoming efficient).
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)


;; ==================================================
;;  org mode
;; ==================================================

(add-hook 'org-mode-hookslime
          '(lambda ()
          (auto-fill-mode 1) Wrap long lines
          ))

;;Show empty line between subtrees even if there is only one
(setq org-cycle-separator-lines 1)

;; ==================================================
;;  InteractivelyDoThings
;; ==================================================

(require 'ido)
    (ido-mode t)
    (setq ido-enable-flex-matching t) ;; enable fuzzy matching



;; ==================================================
;;  EMACS Speaks Statistics
;; ==================================================

 (setq use-file-dialog nil)
 (setq ess-eval-visibly-p nil) ;otherwise C-c C-r (eval region) takes forever
 (setq ess-ask-for-ess-directory nil) ;otherwise you are prompted each time you start an interactive R session

;;; C
;(add-hook 'c-mode-hook
          ;;(lambda () (c-set-style "bsd")))
          ;;(lambda () (c-set-style "user"))) ; edd or maybe c++ ?
;          (lambda () (c-set-style "c++"))) ; edd or maybe c++ ?
;;;; ESS
;(add-hook 'ess-mode-hook
;          (lambda ()
;            (ess-set-style 'C++)
        ;; Because
            ;;                                 DEF GNU BSD K&R C++
            ;; ess-indent-level                  2   2   8   5   4
            ;; ess-continued-statement-offset    2   2   8   5   4
            ;; ess-brace-offset                  0   0  -8  -5  -4
            ;; ess-arg-function-offset           2   4   0   0   0
            ;; ess-expression-offset             4   2   8   5   4
            ;; ess-else-offset                   0   0   0   0   0
            ;; ess-close-brace-offset            0   0   0   0   0
;            (add-hook 'local-write-file-hooks
;                      (lambda ()
;                        (ess-nuke-trailing-whitespace)))))
;; (setq ess-nuke-trailing-whitespace-p t)

(require 'ess-site)
(require 'ess-eldoc)


;; ==================================================
;;  Marmalade
;; ==================================================
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)


;; ==================================================
;;  python
;; ==================================================
(require 'python)
'(python-shell-interpreter "python3")

;; ==================================================
;;  emacs theme
;; ==================================================
(load-theme 'ample-zen)

;; ==================================================
;;  graphene
;; ==================================================
;; (require 'graphene) ;consider spacemacs

;; -----------------------------------------------------------------------------
;; Git support
;; -----------------------------------------------------------------------------

(add-to-list 'load-path "/usr/share/doc/git/contrib/emacs")
(require 'git)
(require 'git-blame)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight light :height 115 :width normal :family "M+ 1mn")))))
