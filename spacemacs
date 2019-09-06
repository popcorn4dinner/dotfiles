;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
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
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     autohotkey
     (auto-completion :variables
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t
                      )
     better-defaults
     bibtex
     colors
     crystal
     deft
     dart
     docker
     elm
     emacs-lisp
     emoji
     elixir
     evil-commentary
     git
     html
     java
     (javascript :variables
                 js2-basic-offset 2
                 js-indent-level 2
                 js-switch-indent-offset 2)
     json
     (markdown :variables markdown-live-preview-engine 'vmd)
     multiple-cursors
     neotree
     nginx
     (org :variables
          org-enable-reveal-js-support t)
     osx
     php
     plantuml
     python
     react
     (ruby :variables
           ruby-test-runner 'rspec
           ruby-version-manager 'rbenv
           ruby-enable-enh-ruby-mode t
           )
     (restclient :variables restclient-use-org t)
     ruby-on-rails
     (shell :variables
             shell-default-height 30
             shell-default-position 'bottom)
     sql
     spell-checking
     syntax-checking
     swift
     terraform
     theming
     (typescript :variables
                 typescript-fmt-tool 'typescript-formatter)
     version-control
     web-beautify
     yaml
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(
                                      all-the-icons
                                      company-terraform
                                      drag-stuff
                                      doom-modeline
                                      gnuplot
                                      helm-org-rifle
                                      highlight-indentation
                                      multiple-cursors
                                      org-bullets
                                      org-cliplink
                                      org-sticky-header
                                      org-super-agenda
                                      phpcbf
                                      super-save
                                      wsd-mode
)

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
   ;; (default spacemacs.pdmp)
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

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
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         doom-one
                         doom-nord
                         (darkplus :location (recipe :fetcher github
                                                     :repo "popcorn4dinner/darkplus-emacs"))
                         spacemacs-dark
                         solarized-dark
                         tangotango
                         deeper-blue
                         afternoon
                         misterioso
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator slant :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("Menlo"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.5)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
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
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

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

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state t

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers '(:relative nil
                               :visual nil
                               :disabled-for-modes dired-mode
                                                   doc-view-mode
                                                   markdown-mode
                                                   org-mode
                                                   pdf-view-mode
                                                   text-mode
                               :size-limit-kb 1000)

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'tailing

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  ;; Sanity savers
  (setq create-lockfiles nil)
  (setq backup-directory-alist `((".*" . ,temporary-file-directory)))
  (setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
  (setq auto-save-list-file-prefix temporary-file-directory)
  (add-hook 'before-save-hook 'delete-trailing-whitespace))

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  ;; Key bindings
  ;;; General
  (global-set-key (kbd "C-/") 'comment-line)
  (global-set-key (kbd "M-<right>") 'end-of-visual-line)
  (global-set-key (kbd "M-<left>")  'beginning-of-visual-line)
  (global-set-key (kbd "H-<right>") 'next-multiframe-window)
  (global-set-key (kbd "H-<left>") 'previous-multiframe-window)

  ;; drag-stuff - dragging lines
  (drag-stuff-global-mode 1)
  (global-set-key (kbd "H-M-<right>") 'drag-stuff-right)
  (global-set-key (kbd "H-M-<left>") 'drag-stuff-left)
  (global-set-key (kbd "H-M-<up>") 'drag-stuff-up)
  (global-set-key (kbd "H-M-<down>") 'drag-stuff-down)

  ;;;; invert split window behavior
  (spacemacs/set-leader-keys "w/" 'split-window-right-and-focus)
  (spacemacs/set-leader-keys "wv" 'split-window-right-and-focus)
  (spacemacs/set-leader-keys "wV" 'split-window-right)

  (spacemacs/set-leader-keys "w-" 'split-window-below-and-focus)
  (spacemacs/set-leader-keys "wv" 'split-window-below-and-focus)
  (spacemacs/set-leader-keys "wV" 'split-window-below)

  ;; Multiple Cursers
  (require 'multiple-cursors)
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C->") 'mc/mark-all-like-this)

  ;;;; find usages
  (spacemacs/set-leader-keys "pu" 'helm-projectile-ag)

  ;;;; go to implementation
  (spacemacs/set-leader-keys "jg" 'dumb-jump-go)
  (spacemacs/set-leader-keys "jG" 'dumb-jump-go-other-window)

  ;;;; YaSnippet
  (spacemacs/set-leader-keys "ia" 'helm-yas-complete)

  ;;; Markdown
  ;;;; live preview
  (spacemacs/set-leader-keys-for-major-mode 'emacs-markdown-mode "mp" 'markdown-live-preview-mode)

  ;; Web Sequence Diagrams
  (add-hook 'wsd-mode-hook 'company-mode)
  (setq wsd-style "napkin")

  ;; NeoTree
  (setq neo-theme 'icons)

  ;; Org-mode
  (with-eval-after-load 'org
    (require 'org-tempo)

    (defun unauthorized-org-babel-languages (lang body)
      (not (member lang '("plantuml" "wsd"))))

    (setq org-confirm-babel-evaluate 'unauthorized-org-babel-languages)
  ;;; activate shift select in org buffers
    (setq org-support-shift-select t)

  ;;; Pretty Bullets
    (require 'org-bullets)
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

  ;;; Reveal.js
    (setq org-re-reveal-root "https://cdn.jsdelivr.net/npm/reveal.js@3.6.0")

  ;;; plantuml
    (setq org-plantuml-jar-path "/Users/bastian/plantuml.jar")

  ;;; Todo sequence
    (setq org-todo-keywords
          '(
            (sequence "TODO(t)" "NEXT(n)" "STARTED(s)" "WAITING(w)" "HOLD(h)" "|" "DONE(d)" "CANCELED(c)")
            (sequence "SOMEDAY(s)" "NOW" "|" "KEEP" "DELETE")

            ))
    (setq org-todo-keyword-faces
          '(("TODO" . (:foreground "#af005f" :background "#073642" :weight bold :slant italic :overline "#af005f"))
            ("STARTED" . (:foreground "#00afaf" :background "#073642" :weight bold :slant italic :overline "#00afaf"))
            ("WAITING" . (:foreground "yellow" :background "#073642" :weight bold :slant italic :overline "yellow"))
            ("OPTIONAL" . (:foreground "#5f5faf" :background "#073642" :weight bold :slant italic :overline "#5f5faf"))

            ("NEXT" . (:foreground "#0087ff" :background "#073642" :weight bold :slant italic :overline "#0087ff"))
            ("DONE" . (:foreground "#5f8700" :background "#073642" :weight bold :slant italic :overline "#5f8700"))
            ("HOLD" . (:foreground "#5f5faf" :background "#073642" :weight bold :slant italic :overline "#5f5faf"))
            ("CANCELED" . (:foreground "grey" :background "#073642" :weight bold :slant italic :overline "grey"))
            ("SOMEDAY" . (:foreground "#0087ff" :background "#073642" :weight bold :slant italic :overline "#0087ff"))
            ("NOW" . (:foreground "#0087ff" :background "#073642" :weight bold :slant italic :overline "#0087ff"))
            ("KEEP" . (:foreground "#5f5faf" :background "#073642" :weight bold :slant italic :overline "#5f5faf"))
            ("DELETE" . (:foreground "grey" :background "#073642" :weight bold :slant italic :overline "grey"))
            ("OVER" . (:foreground "grey" :background "#073642" :weight bold :slant italic :overline "grey"))
            ;; conference notes
            ("ALTERNATIVE" . (:foreground "#af005f" :background "#073642" :weight bold :slant italic :overline "#af005f"))
            ("PICK" . (:foreground "#00afaf" :background "#073642" :weight bold :slant italic :overline "#00afaf"))
            ("WATCH" . (:foreground "#5f5faf" :background "#073642" :weight bold :slant italic :overline "#5f5faf"))
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
        (setq org-projectile-per-project-filepath (lambda(path) (concat (projectile-project-name) ".org")))
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
               (:name "On hold" :todo "HOLD" :order 10)
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

  ;;;; org headlines
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
                                          :background nil
                                          :overline t)
                   collect face into faces
                   finally do (defconst org-level-faces faces)
                   finally do (setq org-n-level-faces (length org-level-faces))))))
  (ap/org-set-level-faces :first-parent 'variable-pitch)

  ;; Autosave
  (use-package super-save
    :ensure t
    :config
    (progn
     (super-save-mode +1)
     (setq super-save-auto-save-when-idle t)
     (add-to-list 'super-save-triggers 'ace-window)
     (add-to-list 'super-save-triggers 'focus-out-hook)
     (add-to-list 'super-save-triggers 'switch-to-buffer)
     (add-to-list 'super-save-triggers 'evil-insert-state-exit-hook)
     )
    )

  (require 'doom-modeline)
  (doom-modeline-mode 1)
  (setq doom-modeline-buffer-file-name-style 'buffer-name)

  (setq js2-strict-missing-semi-warning nil)

  (add-hook 'yaml-mode-hook
            (lambda ()
              'highlight-indentation-mode))

 )


(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("984f92f1d8b5fd695b8724023baf12506c2548a245433e9b0e00aad2f77d0976" default)))
 '(package-selected-packages
   (quote
    (highlight-indent-guides yasnippet-snippets yapfify yaml-mode xterm-color wsd-mode ws-butler writeroom-mode winum which-key web-mode web-beautify volatile-highlights vmd-mode vi-tilde-fringe uuidgen use-package unfill toc-org tide tangotango-theme tagedit symon symbol-overlay swift-mode super-save string-inflection sql-indent spaceline-all-the-icons solarized-theme smeargle slim-mode shell-pop seeing-is-believing scss-mode sass-mode rvm ruby-tools ruby-test-mode ruby-refactor ruby-hash-syntax rubocopfmt rubocop rspec-mode robe rjsx-mode reveal-in-osx-finder restclient-helm restart-emacs rbenv rainbow-mode rainbow-identifiers rainbow-delimiters pytest pyenv-mode py-isort pug-mode projectile-rails prettier-js popwin play-crystal plantuml-mode pippel pipenv pip-requirements phpunit phpcbf php-extras php-auto-yasnippets persp-mode password-generator paradox overseer osx-trash osx-dictionary osx-clipboard orgit org-super-agenda org-ref org-re-reveal org-projectile org-present org-pomodoro org-mime org-download org-cliplink org-bullets org-brain open-junk-file ob-restclient ob-http ob-elixir ob-crystal nodejs-repl nginx-mode neotree nameless mwim mvn multi-term move-text mmm-mode minitest meghanada maven-test-mode markdown-toc magit-svn magit-gitflow macrostep lorem-ipsum livid-mode live-py-mode link-hint launchctl json-navigator js2-refactor js-doc inf-crystal indent-guide importmagic impatient-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-org helm-mode-manager helm-make helm-gitignore helm-git-grep helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag groovy-mode groovy-imports gradle-mode google-translate golden-ratio gnuplot gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md fuzzy font-lock+ flyspell-correct-helm flycheck-pos-tip flycheck-package flycheck-mix flycheck-elm flycheck-crystal flycheck-credo flx-ido fill-column-indicator feature-mode fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-commentary evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help ensime enh-ruby-mode emojify emoji-cheat-sheet-plus emmet-mode elm-test-runner elm-mode elisp-slime-nav editorconfig dumb-jump drupal-mode drag-stuff dotenv-mode doom-modeline dockerfile-mode docker diminish diff-hl devdocs deft dart-mode darkplus-theme cython-mode company-web company-terraform company-tern company-statistics company-restclient company-php company-emoji company-emacs-eclim company-anaconda column-enforce-mode color-identifiers-mode clean-aindent-mode chruby centered-cursor-mode bundler browse-at-remote blacken auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile ameba alchemist ahk-mode aggressive-indent afternoon-theme ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
