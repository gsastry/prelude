;;; package --- summary

;;; Commentary:

;;; Code:

(scroll-bar-mode -1)

(disable-theme 'zenburn)
(load-theme 'solarized-dark t)
(global-linum-mode t)
(require 'prelude-evil)
(require 'prelude-haskell)

;; turn off line highlighting (default from prelude)
;; (remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(global-hl-line-mode -1)

(set-face-attribute 'default nil :height 140)

;; Load ProofGeneral
;;
(load-file "~/.frameworks/ProofGeneral/generic/proof-site.el")


;;;;; Theme ;;;;;
;; Cycle through this set of themes
(setq my-themes '(solarized-light solarized-dark wombat tango))

(setq my-cur-theme nil)
(defun cycle-my-theme ()
  "Cycle through a list of themes, my-themes."
  (interactive)
  (when my-cur-theme
    (disable-theme my-cur-theme)
    (setq my-themes (append my-themes (list my-cur-theme))))
  (setq my-cur-theme (pop my-themes))
  (load-theme my-cur-theme t))

;; Switch to the first theme in the list above
(cycle-my-theme)

;; Bind this to C-t
(global-set-key (kbd "<f9>") 'cycle-my-theme)


;; Note taking stuff

;;;; Here cometh ORG MODE ;;;;
;;(require 'evil-org)
(require 'deft)
(setq deft-use-filter-string-for-filename t)
(setq deft-file-naming-rules '((noslash . "-")
                               (nospace . "-")
                               (case-fn . downcase)))


(provide 'girish)
;;; girish.el ends here
