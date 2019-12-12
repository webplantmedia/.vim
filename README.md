# Vim Plugins and Configuration Files for WordPress Development

Easily duplicate vim environment on any computer

## Installation

If you are on a Mac, you can use Homebrew to install MacVim

```
brew install macvim
```

Link your MacVim to your `Applications` folder

```
ln -Fs `find /usr/local -name "MacVim.app"` /Applications/MacVim.app
```

Install a good coding font. I am using Mac's 'SF Mono' font. [Here](https://medium.com/@deepak.gulati/using-sf-mono-in-emacs-6712c45b2a6d) is how to install it. It is embedded inside the Terminal.app bundle and thus not available to other apps. That’s easily remedied. From terminal run:

```
$ open /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/
```

Select all files in the folder (Cmd+A), right-click any of the selected files and select Open. This will bring up the font preview dialog in Font Book. Click the Install Font button.

Alternatively, if you want to use a good default font, you can change the following line of code in the `.gvimrc` file in this repo:

```
" set guifont=SF\ Mono:h15
set guifont=Courier\ New:h16
```

Next, remove or backup your ~/.vim folder.

```
$ mv ~/.vim ~/.vim.old
```

Clone this repository and all submodules into your home directory.

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

You now have a good `.vimrc` file with a good set of vim plugins that will help you write code more efficiently. Last thing to do is to install `ctags`. [This](https://github.com/universal-ctags/homebrew-universal-ctags) is currently the best way of doing it:

```
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
```

For one of the plugins, make sure you have yarn installed, and that you can run the command `yarn install`. Afterwards, inside VIM, run the following command

```
:PlugInstall
```

## Updating

Update your `.vim` repo and all your vim plugins to the latest versions.

```
:PlugUpdate
```

## Package Manager Used

### [vim-plug](https://github.com/junegunn/vim-plug)

## Plugins Used

### [mileszs/ack.vim](https://github.com/mileszs/ack.vim)

### [webplantmedia/vim-colorschemes](https://github.com/webplantmedia/vim-colorschemes)

### [ctrlpvim/ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)

### [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)

### [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)

### [tobyS/pdv](https://github.com/tobyS/pdv)

### [StanAngeloff/php.vim](https://github.com/StanAngeloff/php.vim)

### [shawncplus/phpcomplete.vim](https://github.com/shawncplus/phpcomplete.vim)

### [godlygeek/tabular](https://github.com/godlygeek/tabular)

### [webplantmedia/transmit-ftp](https://github.com/webplantmedia/transmit-ftp)

### [SirVer/ultisnips](https://github.com/SirVer/ultisnips)

### [jeetsukumaran/vim-buffergator](https://github.com/jeetsukumaran/vim-buffergator)

### [tpope/vim-markdown](https://github.com/tpope/vim-markdown)

### [nelstrom/vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search)

### [tobyS/vmustache](https://github.com/tobyS/vmustache)

### [yuezk/vim-js](https://github.com/yuezk/vim-js)

### [maxmellon/vim-jsx-pretty](https://github.com/maxmellon/vim-jsx-pretty)

### [prettier/vim-prettier](https://github.com/prettier/vim-prettier)

## Recommended Actions

### [Homebrew Tap for Universal Ctags](https://github.com/universal-ctags/homebrew-universal-ctags)

## Cheat Sheet

VIM defaults the `<leader>` to be the `\` key. This vim configuration file remaps the `<leader>` to be the `,` key.

### Toggles

| Shortcut  | Description |
| :------------------: |:----------------|
| \<leader\>ic | Toggle case sensitivity when searching. |
| \<leader\>e | Toggle NERDTree. |
| \<leader\>ww | Toggle line wrap. |
| \<leader\>hs | Toggle search highlight. |
| \<leader\>hl | Toggle line highlight. |
| \<leader\>sl | Toggle display of whitespaces, tabs, and endlines. |
| \<leader\>pp | Toggle paste mode on and off. |

### Commenting

| Shortcut  | Description |
| :------------------: |:----------------|
| \<leader\>cc | Comment out the current line or text selected in visual mode. |
| \<leader\>cf | Comments function or class in a pretty style. Cursor must be on function/class definition. |

### Navigation

| Shortcut  | Description |
| :------------------: |:----------------|
| \<leader\>6 | Switch to alternate buffer. |
| \<C-P\> | Open up fuzzy path finder. |
| \<leader\>b | Open up buffer list. |
| \<leader\>B | Close up buffer list. |
| * | Search selected text and find it elsewhere in the file. |
| n | Search next selected text. |
| N | Search previous selected text. |

### Edits

| Shortcut  | Description |
| :------------------: |:----------------|
| >> | Shifts current line or selected lines rightwards. |
| << | Shifts current line or selected lines leftward. |
| \<leader\>fp | Set filetype to php. |
| \<leader\>fh | Set filetype to html. |
| \<leader\>2 | Convenient way to convert spaces to tab with 2 spaces. |
| \<leader\>4 | Convenient way to convert spaces to tab with 4 spaces. |
| \<leader\>da | Delete all buffers. |
| \<leader\>cd | Switch CWD to the directory of the open buffer. |
| \<leader\>rm | Remove the Windows ^M - when the encodings gets messed up. |

### Run Scripts

| Shortcut  | Description |
| :------------------: |:----------------|
| \<leader\>O | Open Terminal. |
| \<leader\>gt | Generate tags under current working directory. Must have exuberant-ctags command linking to ctags process. |
| \<leader\>gp | Generate git difference patch file for bug fixes. Saves in ~/Downloads/ with name "ticket-id.patch". |
| \<leader\>m | Update permission file of site directory to work with MAMP. |
| \<leader\>u | FTP Upload via FTP Transmit. |

## TODO...

* Need better jquery support
* Need elegant solution to autocomplete. Support for CSS3, HTML5, WordPress functions?
* Tabs that wrap around and indent

## Help

If you think there is a better plugin, mapping, or configuration setting, please let me know. I'm looking to create a very good and efficient WordPress development environment.
