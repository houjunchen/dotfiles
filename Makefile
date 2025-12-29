DOTFILES := $(shell pwd)

.PHONY: help all zsh zsh-compact vim vim-compact nvim ghostty git tig brew

help:
	@echo "Usage: make <target>"
	@echo ""
	@echo "Targets:"
	@echo "  all          Install all (zsh, nvim, ghostty, git, tig)"
	@echo "  zsh          Install zsh config (full, requires Nerd Fonts)"
	@echo "  zsh-compact  Install zsh config (compact, no fonts required)"
	@echo "  vim          Install vim config"
	@echo "  vim-compact  Install vim config (compact)"
	@echo "  nvim         Install neovim config (symlink)"
	@echo "  ghostty      Install ghostty config (symlink)"
	@echo "  git          Install git config (symlink)"
	@echo "  tig          Install tig config"
	@echo "  brew         Install homebrew packages"

all: zsh nvim ghostty git tig

zsh:
	cd $(DOTFILES)/zsh && sh install.sh

zsh-compact:
	cd $(DOTFILES)/zsh && sh install-compact.sh

vim:
	cd $(DOTFILES)/vim && sh install.sh

vim-compact:
	ln -sf $(DOTFILES)/vim/vimrc-compact $(HOME)/.vimrc
	vim +PlugInstall +qall

nvim:
	@mkdir -p $(HOME)/.config
	@if [ -e $(HOME)/.config/nvim ]; then \
		echo "Backing up existing nvim config to ~/.config/nvim.backup"; \
		mv $(HOME)/.config/nvim $(HOME)/.config/nvim.backup; \
	fi
	ln -sf $(DOTFILES)/nvim $(HOME)/.config/nvim
	@echo "Neovim config installed"

ghostty:
	@mkdir -p $(HOME)/.config
	@if [ -e $(HOME)/.config/ghostty ]; then \
		echo "Backing up existing ghostty config to ~/.config/ghostty.backup"; \
		mv $(HOME)/.config/ghostty $(HOME)/.config/ghostty.backup; \
	fi
	ln -sf $(DOTFILES)/ghostty $(HOME)/.config/ghostty
	@echo "Ghostty config installed"

git:
	@if [ -e $(HOME)/.gitconfig ]; then \
		echo "Backing up existing .gitconfig to ~/.gitconfig.backup"; \
		mv $(HOME)/.gitconfig $(HOME)/.gitconfig.backup; \
	fi
	ln -sf $(DOTFILES)/git/.gitconfig $(HOME)/.gitconfig
	@echo "Git config installed"

tig:
	cd $(DOTFILES)/tig && sh install.sh

brew:
	brew install $(shell cat $(DOTFILES)/brew/list | tr '\n' ' ')
