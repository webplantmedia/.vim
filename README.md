#Vim Plugins and Configuration Files for WordPress Development#

Easily duplicate vim environment on any computer

##Installation##

Remove or backup your ~/.vim folder.

```
$ mv ~/.vim ~/.vim.old
```

Clone this repository and all submodules into your home directory.

```
git clone --recursive https://github.com/webplantmedia/.vim.git ~/.vim
```

Create a symbolic link to ~/.vim/.vimrc and ~/.vim/.gvimrc

```
$ ln -s ~/.vim/.vimrc ~/.vimrc
$ ln -s ~/.vim/.gvimrc ~/.gvimrc
```

or you can copy and customize your own .vimrc and .gvimrc files. Just create a copy.

```
$ cp ~/.vim/.vimrc ~/.vimrc
$ cp ~/.vim/.gvimrc ~/.gvimrc
```

##Updating##

Update to latest version

```
$ git pull origin
```

##Package Manager Used##

###[pathogen.vim](https://github.com/tpope/vim-pathogen)###

##Plugins Used##

###[Transmit FTP](https://github.com/webplantmedia/transmit-ftp)###

###[Simple Javascript Indenter](https://github.com/jiangmiao/simple-javascript-indenter)###

###[PDV](https://github.com/tobyS/pdv)###

###[vmustache](https://github.com/tobyS/vmustache)###

###[UltiSnips](https://github.com/SirVer/ultisnips)###

###[ctrlp.vim](https://github.com/kien/ctrlp.vim)###

###[ack.vim](https://github.com/mileszs/ack.vim)###

###[The NERD Tree](https://github.com/scrooloose/nerdtree)###

###[NERD Commenter](https://github.com/scrooloose/nerdcommenter)###

###[VIM Visual Star Search](https://github.com/nelstrom/vim-visual-star-search)###

###[Color Schemes](https://github.com/flazz/vim-colorschemes.git)###

###[Buffergator](https://github.com/jeetsukumaran/vim-buffergator)###

###[PHP VIM](https://github.com/StanAngeloff/php.vim)###

###[Open Browser](https://github.com/tyru/open-browser.vim)###

###[VIM Markdown](https://github.com/tpope/vim-markdown)###

###[PHP Complete](https://github.com/shawncplus/phpcomplete.vim)###

###[WordPress.vim](https://github.com/dsawardekar/wordpress.vim)###

##Recommended Actions##

###[Install Patched Ctags](https://github.com/shawncplus/phpcomplete.vim/wiki/Patched-ctags)###

##Cheat Sheet##

VIM defaults the `<leader>` to be the `\` key. This vim configuration file remaps the `<leader>` to be the `,` key.

###Toggles###

| Shortcut  | Description |
| :------------------: |:----------------|
| F7 | Toggle NERDTree |
| F8 | Toggle line wrap |
| F9 | Toggle search highlight |
| F10 | Toggle line highlight |
| F11 | Show whitespaces, tabs, and endlines |

###Commenting###

| Shortcut  | Description |
| :------------------: |:----------------|
| \<leader\>cc | Comment out the current line or text selected in visual mode. |
| \<leader\>cf | Comments function or class in a pretty style. Cursor must be on function/class definition. |

###Navigation###

| Shortcut  | Description |
| :------------------: |:----------------|
| \<leader\>6 | Switch to alternate buffer. |
| \<C-P\> | Open up fuzzy path finder. |
| \<leader\>b | Open up buffer list. |
| \<leader\>B | Close up buffer list. |
| * | Search selected text and find it elsewhere in the file. |
| n | Search next selected text. |
| N | Search previous selected text. |

###Edits###

| Shortcut  | Description |
| :------------------: |:----------------|
| >> | Shifts current line or selected lines rightwards. |
| << | Shifts current line or selected lines leftward. |

###Run Scripts###

| Shortcut  | Description |
| :------------------: |:----------------|
| \<leader\>gt | Generate tags under current working directory. Must have exuberant-ctags command linking to ctags process. |
| \<leader\>m | Update permission file of site directory to work with MAMP. |

##TODO...##

* Need better jquery support
* Need elegant solution to autocomplete. Support for CSS3, HTML5, WordPress functions?
* Tabs that wrap around and indent

##Help##

If you think there is a better plugin, mapping, or configuration setting, please let me know. I'm looking to create a very good and efficient WordPress development environment.
