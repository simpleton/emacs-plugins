;; load common-settings
(load-file "~/.emacs.d/emacs-plugins/workmodes/common/init.el")
(load-file "~/.emacs.d/emacs-plugins/workmodes/erlang/init.el")
(load-file "~/.emacs.d/emacs-plugins/workmodes/graphviz/init.el")

(add-hook 'find-file-hook (lambda()
			    (if (string="org" (file-name-extension
					       buffer-file-name))
				(progn
				  (load-file "~/.emacs.d/emacs-plugins/workmodes/org/init.el"))
			      )))

(add-hook 'find-file-hook (lambda()
			    (if (or (string="cpp" (file-name-extension
									   buffer-file-name))
						(string="cxx" (file-name-extension
									   buffer-file-name))
						(string="cc" (file-name-extension
									  buffer-file-name))
						(string="c" (file-name-extension
									 buffer-file-name))
						(string="h" (file-name-extension
									 buffer-file-name))
						)
				(progn
				  (load-file "~/.emacs.d/emacs-plugins/workmodes/cpp/init.el"))
			      )))

(add-hook 'find-file-hook (lambda()
			    (if (string="pl" (file-name-extension
								  buffer-file-name))
				(progn
				  (load-file "~/.emacs.d/emacs-plugins/workmodes/perl/init.el"))
			      )))

(add-hook 'find-file-hook (lambda()
			    (if (string="py" (file-name-extension
								  buffer-file-name))
				(progn
				  (load-file "~/.emacs.d/emacs-plugins/workmodes/python/init.el"))
			      )))

(add-hook 'find-file-hook (lambda()
			    (if (string="dot" (file-name-extension
								   buffer-file-name))
				(progn
				  (load-file "~/.emacs.d/emacs-plugins/workmodes/graphviz/init.el"))
			      )))

(add-hook 'find-file-hook (lambda()
			    (if (string="tex" (file-name-extension
								   buffer-file-name))
				(progn
				  (load-file "~/.emacs.d/emacs-plugins/workmodes/latex/init.el"))
			      )))

(add-hook 'find-file-hook (lambda()
			    (if (string="R" (file-name-extension
								 buffer-file-name))
				(progn
				  (load-file "~/.emacs.d/emacs-plugins/workmodes/r/init.el"))
			      )))

(add-hook 'find-file-hook (lambda()
			    (if (string="md" (file-name-extension
								 buffer-file-name))
				(progn
				  (load-file "~/.emacs.d/emacs-plugins/workmodes/markdown/init.el"))
			      )))
