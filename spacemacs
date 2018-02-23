;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation t
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths musC-S-ct have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ------------- :ensure t)---------------------------------------------------
     helm
     auto-completion
     autohotkey
     better-defaults
     colors
     docker
     elm
     emacs-lisp
     emoji
     evil-commentary
     git
     (org :variables
          org-enable-github-support t
          org-enable-reveal-js-support t)
     deft
     bibtex
     (shell :variables
             shell-default-height 30
             shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control
     html
     nginx
     java
     javascript
     itome-react
     (typescript :variables
                 typescript-fmt-tool 'typescript-formatter)
     (markdown :variables markdown-live-preview-engine 'vmd)
     php
     python
     react
     ruby
     ruby-on-rails
     sql
     swift
     osx
     terraform
     theming
     typescript
     yaml
     )
   ;; List of additional packages C-S-cthat will be installed without being
   ;; wrapped in a layer. If yC-S-cou need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages
   '(
     alert
     color-theme-solarized
     all-the-icons
     php-refactor-mode
     phpcbf
     ac-inf-ruby
     gnuplot
     company-inf-ruby
     company-tern
     company-terraform
     ruby-refactor
     multiple-cursors
     org-alert
     org-bullets
     org-cliplink
     org-sticky-header
     org-super-agenda
     real-auto-save
     evil-string-inflection
     drag-stuff
     )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Menlo"
                           :size 13
                           :weight normal
                           :width normal
                           :powerline-scale 1.2)
   ns-use-srgb-colorspace nil
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers '(:disabled-for-modes
                               text-mode
                               :relative nil)
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  (push '("melpa-stable" . "stable.melpa.org/packages/") configuration-layer--elpa-archives)
  (push '(use-package . "melpa-stable") package-pinned-packages)


  ;; Sanity savers
  (setq create-lockfiles nil)
  (setq backup-directory-alist `((".*" . ,temporary-file-directory)))
  (setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
  (setq auto-save-list-file-prefix temporary-file-directory)

)
(defun dotspacemacs/user-config ()
  ;; Key bindings
  ;;; General

  (global-set-key (kbd "M-<right>") 'end-of-visual-line)
  (global-set-key (kbd "M-<left>") 'beginning-of-visual-line)
  (global-set-key (kbd "s-<right>") 'next-multiframe-window)
  (global-set-key (kbd "s-<left>") 'previous-multiframe-window)

  ;; drag-stuff - dragging lines
  (drag-stuff-global-mode 1)
  (global-set-key (kbd "s-M-<right>") 'drag-stuff-right)
  (global-set-key (kbd "s-M-<left>") 'drag-stuff-left)
  (global-set-key (kbd "s-M-<up>") 'drag-stuff-up)
  (global-set-key (kbd "s-M-<down>") 'drag-stuff-down)

  (require 'evil-string-inflection)
  (define-key evil-normal-state-map "gR" 'evil-operator-string-inflection)

  ;;;; find usages
  (spacemacs/set-leader-keys "pu" 'helm-projectile-ag)

  ;;;; go to implementation
  (spacemacs/set-leader-keys "jg" 'dumb-jump-go)
  (spacemacs/set-leader-keys "jG" 'dumb-jump-go-other-window)

  ;;;; YaSnippet
  (require 'yasnippet)
  (spacemacs/set-leader-keys "ia" 'helm-yas-complete)
  (define-key yas-minor-mode-map (kbd "TAB") yas-maybe-expand)

  ;;; Markdown
  ;;;; live preview
  (spacemacs/set-leader-keys-for-major-mode 'emacs-markdown-mode "mp" 'markdown-live-preview-mode)

  ;; javascript
  (setq-default
   ;; js2-mod
   js2-basic-offset 2
   js-indent-level 2
   js-switch-indent-offset 2
   ;; web-mode
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2)

  ;; typescript
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
  (add-hook 'web-mode-hook
            (lambda ()
              (when (string-equal "tsx" (file-name-extension buffer-file-name))
                (setup-tide-mode))))
  ;; enable typescript-tslint checker
  (flycheck-add-mode 'typescript-tslint 'web-mode)

  ;; PHP
  ;;; refactor mode
  (require 'php-refactor-mode)
  (add-hook 'php-mode-hook 'php-refactor-mode)


  ;;; auto formatting
  (require 'phpcbf)
  (custom-set-variables
   '(phpcbf-executable "/usr/local/bin/phpcbf")
   '(phpcbf-standard "PSR2"))

  ;; Auto format on save.
  (add-hook 'php-mode-hook 'phpcbf-enable-on-save)

  ;; Ruby
  (require 'ruby-refactor)
  (add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)
  (eval-after-load 'company
    '(add-to-list 'company-backends 'company-inf-ruby))

  ;; Terraform
  (require 'company-terraform)
  (company-terraform-init)

  ;; Autocomplete
  (global-company-mode t)
  (add-to-list 'company-backends 'company-tern)
  (setq company-tern-meta-as-single-line t)

  (custom-set-faces
   '(company-tooltip-common
     ((t (:inherit company-tooltip :weight bold :underline nil))))
   '(company-tooltip-common-selection
     ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))

  ;; Alert
  (use-package alert
    :defer t
    :config
    (progn
      (defun alert-notifier-notify (info)
        (if alert-notifier-command
            (let ((args
                   (list "-title"   (alert-encode-string (plist-get info :title))
                         "-activate" "org.gnu.Emacs"
                         "-message" (alert-encode-string (plist-get info :message))
                         "-execute" (format "\"%s\"" (switch-to-buffer-command (plist-get info :buffer))))))
              (apply #'call-process alert-notifier-command nil nil nil args))
          (alert-message-notify info)))

      (defun switch-to-buffer-command (buffer-name)
        (emacsclient-command (format "(switch-to-buffer \\\"%s\\\")" buffer-name)))

      (defun emacsclient-command (command)
        (format "emacsclient --server-file='%s' -e '%s'" server-name command))

      (setq alert-default-style 'osx-notifier)))

  ;; NeoTree
  (setq neo-theme 'icons)

  ;; Multiple Cursers
  (require 'multiple-cursors)
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

  ;; Org-mode
  (with-eval-after-load 'org
    (require 'org-habit)
    (setq org-log-repeat "time")

  ;;; Pretty Bullets
    (require 'org-bullets)
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

    (use-package org-sticky-header
      :after org
      :config
      (setq org-sticky-header-full-path 'full)
      (add-hook 'org-mode-hook 'org-sticky-header-mode))

  ;;; Reveal.js
    (use-package ox-reveal
      :ensure ox-reveal)

    (setq org-reveal-root "http://cdn.jsdelivr.net/reveal.js/3.0.0/")
    (setq org-reveal-mathjax t)

  ;;; Todo sequence
    (setq org-todo-keywords
          '(
            (sequence "TODO(t)" "NEXT(n)" "STARTED(s)" "WAITING(w)" "|" "DONE(d)" "HOLD(h)" "CANCELED(c)")
            (sequence "SOMEDAY(s)" "NOW" "|" "KEEP" "DELETE")

            ))
    (setq org-todo-keyword-faces
          '(("TODO" . (:foreground "#af005f" :background "#073642" :weight bold :slant italic :overline "#af005f"))
            ("STARTED" . (:foreground "#00afaf" :background "#073642" :weight bold :slant italic :overline "#00afaf"))
            ("WAITING" . (:foreground "yellow" :background "#073642" :weight bold :slant italic :overline "yellow"))
            ("NEXT" . (:foreground "#0087ff" :background "#073642" :weight bold :slant italic :overline "#0087ff"))
            ("DONE" . (:foreground "#5f8700" :background "#073642" :weight bold :slant italic :overline "#5f8700"))
            ("HOLD" . (:foreground "#5f5faf" :background "#073642" :weight bold :slant italic :overline "#5f5faf"))

            ("CANCELED" . (:foreground "grey" :background "#073642" :weight bold :slant italic :overline "grey"))

            ("SOMEDAY" . (:foreground "#0087ff" :background "#073642" :weight bold :slant italic :overline "#0087ff"))
            ("NOW" . (:foreground "#0087ff" :background "#073642" :weight bold :slant italic :overline "#0087ff"))
            ("KEEP" . (:foreground "#5f8700" :background "#073642" :weight bold :slant italic :overline "#5f8700"))
            ("DELETE" . (:foreground "grey" :background "#073642" :weight bold :slant italic :overline "grey"))

            ))

  )

 ;;; Capture
    (setq org-capture-templates
          `(
            ("t" "Todo" entry (file+headline "~/org/todos.org" "Tasks")
             "* TODO %?\n :PROPERTIES: :CREATED: %U :END:"
             :prepend t :empty-line t)

            ("T" "Todo with Context" entry (file+headline "~/org/todos.org" "Tasks")
             "* TODO %?\n context: %a \n:PROPERTIES: :CREATED: %U :END:"
             :prepend t :empty-line t)

            ("r" "Reminder" entry (file "~/org/reminders.org")
             "* TODO %^{What do you want to be reminded of?}\nSCHEDULED:%^{when?}T \n:PROPERTIES: :CREATED: %U :END"
             :prepend t :empty-line t)

            ("d" "Deadline" entry (file "~/org/deadlines.org")
             "* TODO %^{title?} \nDEADLINE:%^{when?}T \n:PROPERTIES: :CREATED: %U :END"
             :prepend t :empty-line t)

            ("b" "Bookmark" entry (file "~/org/bookmarks.org")
             "* SOMEDAY read %(org-cliplink-capture) \n:TO-READ: \n:PROPERTIES: :CREATED: %U :END"
             :prepend t :empty-line t)

            ("i" "Idea" entry (file+headline "~/org/todos.org" "Ideas")
             "* SOMEDAY %?\n :PROPERTIES: :CREATED: %U :END:"
             :prepend t :empty-line t)

            ("I" "Idea with context" entry (file+headline "~/org/todos.org" "Ideas")
             "* SOMEDAY %?\n context: %a \n:PROPERTIES: :CREATED: %U :END:"
             :prepend t :empty-line t)
            ("s" "Shopping" entry (file "~/org/shopping.org")

             "* NEW %^{What do you need to buy?} :shopping:\n :PROPERTIES: :CREATED: %U :END"
             :prepend t :empty-line t)
            ))


  (with-eval-after-load 'org-agenda

    (setq org-agenda-files (apply 'append
                                  (mapcar
                                   (lambda (directory)
                                     (directory-files-recursively
                                      directory org-agenda-file-regexp))
                                   '("~/org/" "~/Documents/" "~/Projects/"))))
   ;;Projectile
    (use-package org-projectile
      :bind (("C-c n p" . org-projectile-project-todo-completing-read)
             ("C-c c" . org-capture))
      :config
      (progn
        (org-projectile-per-project)
        (setq org-projectile-per-project-filepath "todos.org")
        (push (org-projectile-project-todo-entry) org-capture-templates)
        ;; (setq org-agenda-files (append org-agenda-files (org-projectile-todo-files)))
      )
      :ensure t)

  ;;; Super Agenda

    (use-package org-super-agenda
      :config
      (progn
      (org-super-agenda-mode)
      (setq  org-super-agenda-groups
             '(

               (:name "In progress" :todo "STARTED" :order 2)

               (:name "Next" :todo "NEXT" :order 3)

               (:name "Missed deadlines"
                      :deadline "past"
                      :order 4)
               (:name "Upcoming deadlines"
                      :deadline "future"
                      :order 5)
               (:name "Backlog" :todo "TODO" :order 6)

               (:name "Waiting" :todo "WAITING" :order 9)
               (:name "On hold" :todo "HOLD" :order 9)
               (:name "Urgent Reading"
                      :and (
                             :todo "NOW"
                             :regexp (":TO-READ:")
                            )
                      :order 14)
               (:name "Reading List"
                      :and (
                             :todo "SOMEDAY"
                             :regexp (":TO-READ:")
                            )
                      :order 15)
               (:name "Ideas" :todo "SOMEDAY" :order 20)

               (:auto-group t :order 99))
             )
      )
      :ensure t)

  )


  ;; Autosave
  (require 'real-auto-save)
  (add-hook 'prog-mode-hook 'real-auto-save-mode)
  (setq real-auto-save-interval 5) ;; in seconds
  (setq auto-save-interval 20)

  ;;Solarized theme
  (setq theming-modifications
        '((solarized
           (header-line ((,class (:weight bold :underline "#320068" :overline "#320068" :foreground "#fffefe" :background "#00050e"))))


           ;;powerline
           (mode-line :foreground "#002b36" :background "#585858" :inverse-video nil)
           (powerline-active :foreground "#002b36"  :inverse-video nil)
           (powerline-active1 :foreground "#808080" :background "#002b36" :inverse-video nil)
           (powerline-active2 :foreground "#808080" :background "#002b36" :inverse-video nil)
           (mode-line-inactive :foreground "#808080" :background "#002b36" :inverse-video nil)
           (powerline-inactive1 :foreground "#808080" :background "#002b36" :inverse-video nil)
           (powerline-inactive2 :foreground "#808080" :background "#002b36" :inverse-video nil)
           (org-pomodoro-mode-line :foreground "#5f8700" :weight bold :slant italic)
           (org-pomodoro-mode-line-break :foreground "#af005f" :weight bold :slant italic)
           ;; Make a really prominent helm selection line.
           (helm-selection :foreground "#585858" :background "#5f8700" :inverse-video nil)
           ;; See comment above about dotspacemacs-colorize-cursor-according-to-state.
           (cursor :background "#b58900")
         )))

  ;; Now we can load the theme.
  (set-terminal-parameter nil 'background-mode 'dark)
  (set-frame-parameter nil 'background-mode 'dark)
  (spacemacs/load-theme 'solarized)

  (cl-defun ap/org-set-level-faces (&key (first-parent 'outline-1))
  (require 'color)
  (require 'dash)
  (require 'org-inlinetask)
  (let ((org-level-color-list (-cycle (list  "#d70000" "#0087ff" "#00afaf" "#af8700" "#af005f" "#5f8700" "#0087ff" "#5f5faf" ))))
       (cl-flet ((modify-color (color) (thread-first color
                                          (color-desaturate-name 30))))
          (cl-loop for level from 1 to (1- org-inlinetask-min-level)
                   for face = (intern (format "org-level-%s" level))
                   for parent = (cl-case level
                                  (1 (list first-parent 'highlight))
                                  (t (intern (format "org-level-%s" (1- level)))))
                   for height = (cond ((= level 1) 1.3)
                                      ((<= level 4) 0.9)
                                      (t 1.0))
                   for weight = (if (<= level 8) 'bold 'normal)
                   unless (internal-lisp-face-p face)
                   do (custom-declare-face face `((t :inherit ,(intern (format "outline-%s" (1- level)))))
                                           (format "Face for Org level %s headings." (1- level)))
                   do (set-face-attribute face nil
                                          :inherit parent
                                          :foreground (modify-color (nth level org-level-color-list))
                                          :height height
                                          :weight weight
                                          :overline t)
                   collect face into faces
                   finally do (defconst org-level-faces faces)
                   finally do (setq org-n-level-faces (length org-level-faces))))))
  (ap/org-set-level-faces :first-parent 'variable-pitch)



  ;; Turn this off to stop it interfering with mic-paren.
  (set-face-attribute 'sp-show-pair-match-face nil :foreground 'unspecified :background 'unspecified)
  (set-face-attribute 'sp-show-pair-mismatch-face nil :foreground 'unspecified :background 'unspecified)

  ;; Scrolling
  (setq mouse-wheel-scroll-amount '(3 ((shift) . 1) ((control) . nil)))
  (setq mouse-wheel-progressive-speed nil)

  (add-hook 'pd-focus-in-hook 'pd-log-sys-info)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
