# Configs

Place for all my configuration files and settings.

<!-- TOC GFM -->

* [Bash](#bash)
    * [Ignore commands from history](#ignore-commands-from-history)
    * [Add branch name to the command prompt](#add-branch-name-to-the-command-prompt)
* [Neovim](#neovim)
* [Visual Studio Code](#visual-studio-code)
    * [Extensions](#extensions)

<!-- /TOC -->

## Bash

`.bashrc` interactive shell configuration file.

- [Sample .bashrc and .bash_profile Files (tldp.org)](https://tldp.org/LDP/abs/html/sample-bashrc.html)

### Ignore commands from history

- [Tech Republic article about history and histignore](https://www.techrepublic.com/article/linux-command-line-tips-history-and-histignore-in-bash/)

### Add branch name to the command prompt

## Neovim

`~/.config/nvim/init.vim` Neovim configuration file.

## Visual Studio Code

### Extensions

C and Cpp
- [ms-vscode.cpptools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)

hexdump for VSCode
- [slevesque.vscode-hexdump](https://marketplace.visualstudio.com/items?itemName=slevesque.vscode-hexdump)

LaTeX Workshop
- [james-yu.latex-workshop](https://marketplace.visualstudio.com/items?itemName=james-yu.latex-workshop)

Live Server
- [ritwickdey.liveserver](https://marketplace.visualstudio.com/items?itemName=ritwickdey.liveserver)

Markdown All in One
- [yzhang.markdown-all-in-one](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)

PHP IntelliSense
- [felixfbecker.php-intellisense](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-intellisense)

Python
- [ms-python.python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)

SQLite
- [alexcvzz.vscode-sqlite](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite)

Show number of selected lines
- [gurumukhi.selected-lines-count](https://marketplace.visualstudio.com/items?itemName=gurumukhi.selected-lines-count)

Neovim
- [asvetliakov.vscode-neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim)

```init.vim
if if !exists('g:vscode')
    set tabstop=4
endif
```
