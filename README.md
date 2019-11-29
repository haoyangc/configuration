Setup Guide for new Mac

# Software
Iterm
XCode
Intellij
VSCode
## brew (Homebrew)
Homebrew calls itself The missing package manager for macOS and is an essential tool for any developer.
https://brew.sh/
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
```

## tmux
```
brew install tmux
```

# Git
## git config (~/.gitconfig)
https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration
```
git config --global user.name "yang"
git config --global user.email haoyangc91@gmail.com
git config --global core.editor vim
git config --global core.excludesfile ~/.gitignore_global
git config --global core.pager ''
# core.pager: setting it to empty string turns it off. otherwise `git branch` opens a new `alternate screen` which is annoying
```

## git ignore (~/.gitignore_global)
```
*~
.*.swp
.DS_Store
build
node_modules
*.iml
```

# zsh & oh-my-zsh
## zsh
The Z shell (also known as zsh) is a Unix shell that is built on top of bash (the default shell for macOS) with additional features. It's recommended to use zsh over bash. It's also highly recommended to install a framework with zsh as it makes dealing with configuration, plugins and themes a lot nicer.
```
brew install zsh
```

## oh-my-zsh
https://ohmyz.sh/
### install: 
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### configure:
`~/.zshrc`
```
ZSH_THEME="ys"
```

# Vim
## make vim use system default clipboard

1. Verification
https://www.markcampbell.me/2016/04/12/setting-up-yank-to-clipboard-on-a-mac-with-vim.html
By default, OSX ships with vim which is not supporting system clipboard. Verification:
```
vim --version | grep clipboard
```
If you just want to be able to copy to OS X's clipboard, you just need +clipboard. If you want X11 clipboard support, you need +xterm_clipboard.

2. install new vim
To turn it on, need you install vim via homebrew with the proper options
```
brew install vim
```
After you've installed it, make sure that you've set up your PATH correctly to invoke the installed Vim instead of the default system one.
```
Try `which vim`
if showing /usr/bin/vim, it's the system old vim.
if showing /usr/local/bin/vim, it's the brew installed vim.
```
```
echo 'export PATH=/usr/local/bin:$PATH' >> ~/.zshrc
```

3. setup .vimrc
```
" TLDR; turn on yank to clipboard, put following in ~/.vimrc
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
```

## Install vundle (plugin manager for vim)
https://github.com/VundleVim/Vundle.vim
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## Install plugins using vundle
Launch vim and run :PluginInstall





