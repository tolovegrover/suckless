(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;;(package-initialize)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
;;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(load "~/.emacs.d/sanemacs.el" nil t)
(load "~/.emacs.d/dired+.el" nil t)
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives
               (cons "melpa" (concat proto "://melpa.org/packages/")) t))
;;(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (skewer-mode eww-lnum pdf-tools org))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package lammps-mode)

(autoload 'lammps-mode "lammps-mode.el" "LAMMPS mode." t)
(setq auto-mode-alist (append auto-mode-alist
                              '(("in\\." . lammps-mode))
                              '(("\\.lmp\\'" . lammps-mode))
                              ))

;;(require 'exwm)
;;(require 'exwm-config)
;;(exwm-config-default)
