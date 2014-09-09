#Vim Plugins and Configuration Files for WordPress Development#

Easily duplicate vim environment on any computer

##Installation##

Remove or backup your ~/.vim folder.

```
$ mv ~/.vim ~/.vim.old
```

Clone this repo into your home directory.

```
git clone https://github.com/webplantmedia/.vim.git ~/.vim
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

##TODO...##

* Need better jquery support
* Need elegant solution to autocomplete. Support for CSS3, HTML5, WordPress functions?
* Tabs that wrap around and indent

##Help##

If you think there is a better plugin, mapping, or configuration setting, please let me know. I'm looking to create a very good and efficient WordPress development environment.
