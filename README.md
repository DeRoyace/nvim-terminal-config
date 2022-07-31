<h1 align="center">Welcome to nvim-terminal-config 👋</h1>
<img src="https://socialify.git.ci/DeRoyace/nvim-terminal-config/image?description=1&descriptionEditable=This%20ripo%20is%20made%20for%20nvim%20and%20bash%20terminal%20setup%20for%20better%20development%20experience.&font=Inter&forks=1&issues=1&language=1&name=1&owner=1&pattern=Charlie%20Brown&pulls=1&stargazers=1&theme=Dark" alt="nvim-terminal-config"  />

<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.1-blue.svg?cacheSeconds=2592000" />
  <a href="https://github.com/DeRoyace/nvim-terminal-config/blob/master/README.md" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>
  <a href="https://github.com/DeRoyace/nvim-terminal-config/blob/master/LICENSE" target="_blank">
    <img alt="License: Apache License 2.0" src="https://img.shields.io/badge/License-Apache License 2.0-yellow.svg" />
  </a>
  <a href="https://twitter.com/deRohitRoyace" target="_blank">
    <img alt="Twitter: deRohitRoyace" src="https://img.shields.io/twitter/follow/deRohitRoyace.svg?style=social" />
  </a>
</p>

> Configuring terminal (bash) and Neovim or Vim for developer experience like that in VScode.

## 📷 Screenshots:
<img src="images/bash_terminal.png" alt="" />
<img src="images/vim_editor.png" alt="" />
<br>

## 🏠 [Homepage](https://github.com/DeRoyace/nvim-terminal-config)

## Requires:
* Neovim Version 0.7.2 or above, links here: https://github.com/neovim/neovim/releases/tag/v0.7.2
* Vundle Plugin Manager, install it from here: https://github.com/VundleVim/Vundle.vim

## Install
### Linux:
#### Go to Home > Open terminal > copy the following commands:
```sh
git clone https://github.com/DeRoyace/nvim-terminal-config
cat > nvim-terminal-config/init.vim ~/.config/nvim/init.vim # config Neovim
cat > nvim-terminal-config/bashrc .bashrc # config terminal
vim ~/.config/nvim/init.vim # all your nvim config present here now
:PluginInstall # to install all the plugins and get ready with your nvim setup.
```

## Usage
#### Open your terminal and create a testfile:
```sh
nvim testfile.txt
:TransparentDisable # by default the init.vim is configured to transparent mode. You can disable it by simply doing :TransparentDisable
:NERDTree # or CTRL + E to open an file explorer window in the editor
:TagbarToggle # open the tags (e.g. macros, functions, varibales, etc.) in that file
:term # to open terminal in the editor
```

## Run tests

```sh
nvim -v
```

## Author

👤 **Rohit Roy**

* Website: https://linktr.ee/Rohit_drc
* Twitter: [@deRohitRoyace](https://twitter.com/deRohitRoyace)
* Github: [@DeRoyace](https://github.com/DeRoyace)
* LinkedIn: [@rohit-roy-51b2b6222](https://linkedin.com/in/rohit-roy-51b2b6222)

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2022 [Rohit Roy](https://github.com/DeRoyace).<br />
This project is [Apache License 2.0](https://github.com/DeRoyace/nvim-terminal-config/blob/master/LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_