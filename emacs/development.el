;; -------------------
;; Key mappings
;; -------------------

(global-set-key (kbd "<f9>") 'format-buffer)

;; -------------------
;; Format
;; -------------------

(defun format-buffer ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

;; -------------------
;; Docblock comments
;; -------------------

(defun docblock-single () (interactive)
       (insert "/** Comment ... */")
       (delete-trailing-whitespace)
       (indent-region (point-min) (point-max) nil)
       (untabify (point-min) (point-max)))

(defun docblock-multi () (interactive)
       (insert "/**\n * Description\n* Details, explanations\n*/")
       (delete-trailing-whitespace)
       (indent-region (point-min) (point-max) nil)
       (untabify (point-min) (point-max)))

(defun docblock-function () (interactive)
       (insert "/**\n * Description of the function.\n * \n * @param\n * @return\n */")
       (delete-trailing-whitespace)
       (indent-region (point-min) (point-max) nil)
       (untabify (point-min) (point-max)))

(defun docblock-file () (interactive)
       (insert "/**\n * Line 1 ...\n * Line 2 ...\n *\n * @category \n * @license \n * @version \n * @link \n * @author Original Author <Daniel Medina>\n */")
       (delete-trailing-whitespace)
       (indent-region (point-min) (point-max) nil)
       (untabify (point-min) (point-max)))

;; -------------------
;; Admin Intelligence Repository
;; -------------------

(defun air-index () (interactive)
       (insert "# ------------------------------------------------- #\n# -------------------- INDEX ---------------------- #\n# ------------------------------------------------- #")
       (delete-trailing-whitespace)
       (indent-region (point-min) (point-max) nil)
       (untabify (point-min) (point-max)))

(defun air-header () (interactive)
       (insert "# ------------------- Name --------------------- #")
       (delete-trailing-whitespace)
       (indent-region (point-min) (point-max) nil)
       (untabify (point-min) (point-max)))

;; -------------------
;; Laravel
;; -------------------

(defun laravel-model-scope () (interactive)
       (insert "/**\n * Local scope\n *\n * Detail of the scope\n *\n * @param \\Illuminate\\Database\\Eloquent\\Builder $query\n * @return \\Illuminate\\Database\\Eloquent\\Builder\n*/\npublic function scopeName($query)\n{\n/** Scope action ... */\n}")
       (delete-trailing-whitespace)
       (indent-region (point-min) (point-max) nil)
       (untabify (point-min) (point-max)))
