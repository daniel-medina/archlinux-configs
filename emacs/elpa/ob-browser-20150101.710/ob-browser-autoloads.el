;;; ob-browser-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "ob-browser" "ob-browser.el" (22619 50699 603184
;;;;;;  726000))
;;; Generated autoloads from ob-browser.el

(defvar org-babel-default-header-args:browser '((:results . "file") (:exports . "results")) "\
Default arguments for evaluating a browser source block.")

(autoload 'org-babel-execute:browser "ob-browser" "\
Execute a browser block.

\(fn BODY PARAMS)" nil nil)

(add-hook 'org-babel-after-execute-hook 'org-redisplay-inline-images)

(eval-after-load "org" '(add-to-list 'org-src-lang-modes '("browser" . html)))

;;;***

;;;### (autoloads nil nil ("ob-browser-pkg.el") (22619 50699 586518
;;;;;;  59000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ob-browser-autoloads.el ends here
