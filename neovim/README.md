# Neovim

This doc is just a collection of links to help bootstrap my Neovim journey.

* [Neovim](https://neovim.io/)
* [lazy.nvim](https://github.com/folke/lazy.nvim) (package manager)
* [Sample config](https://github.com/binarytiger/tonyvim)
* Useful plugins:
  * [Which Key](https://github.com/folke/which-key.nvim)
  * [toggleterm](https://github.com/akinsho/toggleterm.nvim)
  * [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
    * [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) and [nerdfonts](https://www.nerdfonts.com) are both useful for this one, too

## Setup

Once Neovim is set up, run the healthcheck to see what's going on:

```
:checkhealth
```

It'll probably say that a bunch of things need to be set up (e.g. Python, node)

```
pip3 install --user pynvim
npm i -g neovim
```

The healthcheck should tell you what to run to install these things. Once that's done, restart Neovim.

## Misc.

Some random helpful tips and tricks:

* If the delete key doesn't work as expected, it's probably iTerm2 sending the wrong character code. Go into Preferences > Profiles > Keys > Key Mappings and get rid of anything that tries to send the "Del->" combination
* [Sessions are your friend](https://neovim.io/doc/user/usr_21.html#21.4)
* [`ruby_lsp` docs](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#ruby_lsp)

