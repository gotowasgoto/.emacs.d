(setq make-backup-files nil)
(setq auto-save-default nil)

(defun goto/visit-emacs-init-file ()
  (interactive)
  (find-file user-init-file))

(defun goto/load-emacs-init-file ()
  (interactive)
  (load user-init-file))

(global-set-key (kbd "C-c e i f") 'goto/visit-emacs-init-file)
(global-set-key (kbd "C-c e i l") 'goto/load-emacs-init-file)

(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(setq custom-file (concat user-emacs-directory
			  "custom.el"))
