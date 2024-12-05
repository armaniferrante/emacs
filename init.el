;; ~/.emacs.d/init.el is the entry point to the Emacs setup.

;; Setup package sources.
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(load "~/.emacs.d/elisp/languages/init.el")
(load "~/.emacs.d/elisp/ui.el")
(load "~/.emacs.d/elisp/utils.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
	 '("171d1ae90e46978eb9c342be6658d937a83aaa45997b1d7af7657546cae5985b" default))
 '(package-selected-packages
	 '(magit which-key try autopair fill-column-indicator atom-one-dark-theme scala-mode lua-mode yaml-mode dockerfile-mode docker protobuf-mode tide web-mode use-package typescript-mode toml-mode solidity-mode rust-playground rtags racer jedi irony gotest go-projectile go-autocomplete flymake-solidity flycheck-rust flycheck-mypy exec-path-from-shell company-terraform company-quickhelp cmake-mode cmake-ide clang-format cargo auto-complete-clang)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
