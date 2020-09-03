DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*)
EXCLUSIONS := .DS_Store .git .gitignore .gitmodules .travis.yml
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))
BREWFILES  := $(wildcard Brewfile*)
DEPTHS     := ./sandbox/Makefile

list:
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)
	@$(foreach val, $(DEPTHS), /bin/ls -dF $(val);)

deploy:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@$(foreach val, $(DEPTHS), ln -sfnv $(abspath $(val)) $(HOME)/$(notdir $(val))) 

prepare:
ifeq (,$(shell which brew))
	xcode-select --install
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | ruby
endif

install: prepare
	@$(foreach val, $(BREWFILES), brew bundle --file=$(val);)
	@mkdir $(PWD)/.vim/bundle
	@git clone https://github.com/VundleVim/Vundle.vim.git $(PWD)/.vim/bundle/Vundle.vim
	@vim +PluginInstall +qall

clean:
	@echo 'Remove dot files in your home directory...'
	@-$(foreach val, $(DOTFILES), rm -vrf $(HOME)/$(val);)
	-rm -rf $(DOTPATH)
