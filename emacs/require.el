;; key configurations
(define-key key-translation-map (kbd "<right>") (kbd "▶"))
(define-key key-translation-map (kbd "<left>") (kbd "◀"))
(define-key key-translation-map (kbd "<up>") (kbd "▲"))
(define-key key-translation-map (kbd "<down>") (kbd "▼"))

(global-set-key (kbd "<f7>") 'buffer-menu)
(global-set-key (kbd "<f8>") 'direx:jump-to-directory)

;; management of backups
(defun make-backup-file-name (FILE)                                             
  (let ((dirname (concat "~/.backup/emacs/"                                    
                         (format-time-string "%y/%m/%d/"))))                    
    (if (not (file-exists-p dirname))                                           
        (make-directory dirname t))                                             
    (concat dirname (file-name-nondirectory FILE))))

;; hiding the menu bar
(menu-bar-mode -1)

;; loading web-mode and autoload for specific file formats
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\."))
)

;; loading direx
(require 'direx)

;; loading org-bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; loading smart-mode-line
(setq sml/theme 'dark)
(sml/setup)

;; loading all themes
(load-theme 'monokai t)
(load-theme 'paganini t)

;; theme choice
(enable-theme 'paganini)

