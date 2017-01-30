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
(add-to-list 'auto-mode-alist '("\\.blade.php?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\."))
)

(setq web-mode-enable-current-element-highlight t)
(setq web-mode-enable-current-column-highlight t)
;; loading direx
(require 'direx)

;; loading org-bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; loading smart-mode-line
(setq sml/theme 'dark)
(setq sml/no-confirm-load-theme t)
(sml/setup)

;; loading all themes
(load-theme 'monokai t)
(load-theme 'paganini t)

;; theme choice
(enable-theme 'paganini)

;; development helpers
(defun format-buffer ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(defun comment () (interactive)
       (insert "/** Comment ... */"))
(defun comment-big () (interactive)
       (insert "/**\n * ----> Description title <----\n * -----------------------------\n * Line 1\n * Line 2\n * Etc ...\n */\n\n"))
(defun comment-function () (interactive)
       (insert "/**\n * Description of the function. \n * @param \n * @return \n * @exception \n * @see \n */\n\n"))
(defun comment-file () (interactive)
       (insert "/**\n * Line 1 ...\n * Line 2 ...\n * @category \n * @license \n * @version \n * @link \n * @author Original Author <Daniel Medina>\n */\n\n"))

;; development helpers - keymaps
(define-key global-map [(S-f1)] 'comment)
(define-key global-map [(S-f2)] 'comment-big)
(define-key global-map [(S-f3)] 'comment-function)
(define-key global-map [(S-f4)] 'comment-file)

(global-set-key (kbd "<f9>") 'format-buffer)
