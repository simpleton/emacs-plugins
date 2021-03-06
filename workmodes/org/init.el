(require 'org)

; use htmlize to highlight code block
(add-to-list 'load-path "~/.emacs.d/emacs-plugins/components/htmlize/")

(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(global-font-lock-mode 1)
(setq org-hide-leading-stars t)
(setq org-log-done t)
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(setq org-agenda-files (list "~/repo/bitbucket/crackcell-agenda/gtd.org"
							 "~/repo/bitbucket/crackcell-agenda/personal.org"
							 "~/repo/bitbucket/crackcell-agenda/inbox.org"
							 "~/repo/bitbucket/crackcell-agenda/hobby.org"
							 "~/repo/bitbucket/crackcell-agenda/periodical.org"
							 "~/repo/bitbucket/crackcell-agenda/notes.org"
							 "~/repo/bitbucket/crackcell-agenda/someday.org"))
(setq org-footnote-auto-adjust t)

(setq org-refile-targets
      '(
		("gtd.org" :maxlevel . 2)
		("someday.org" :level . 2)
		("inbox.org" :level . 2)
		(nil . (:todo . "Projects"))
		)
)

(add-hook 'org-agenda-mode-hook 'hl-line-mode)

(load-file "~/.emacs.d/emacs-plugins/workmodes/org/keybindings.el")
(load-file "~/.emacs.d/emacs-plugins/workmodes/muse/init.el")
(load-file "~/.emacs.d/emacs-plugins/workmodes/markdown/init.el")
