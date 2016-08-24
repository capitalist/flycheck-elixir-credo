(setq flycheck-elixir-credo-packages
      '(flycheck
        (flycheck-elixir-credo :location (recipe :fetcher github :repo "capitalist/flycheck-elixir-credo"))
         ))

(defun flycheck-elixir-credo/init-flycheck-elixir-credo ()
  (use-package flycheck-elixir-credo
               :defer t
               :init (add-hook 'elixir-mode-hook 'flycheck-elixir-credo-setup)))

(defun flycheck-elixir-credo/post-init-flycheck ()
  (add-hook 'elixir-mode-hook 'flycheck-mode))
