# Tooling

This is a list of tooling I've found useful (OS X-focused).

* iTerm2
  * oh-my-zsh
    * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
  * Source Code Pro, [Input](http://input.fontbureau.com/), and/or [FiraCode](https://github.com/tonsky/FiraCode)
  * iterm2colorschemes.com
    * Alternatively: I've uploaded dark and light `.itermcolors` to this repo for quick & easy setup
      * **Update:** I've found that the base-16 colour schemes (linked below) do a much better job of all this
    * **Note for Terminator:** You have to change your `~/.config/terminator/config` file to set up custom color themes. The iterm2colorschemes github repo has a section for ports to terminator (look for `.config` files). Find the theme you want and copy/paste the key/values under the `[[theme_name]]` bit into your `[profiles] [[default]]` section.
* tmux
  * [shortcuts](https://gist.github.com/MohamedAlaa/2961058)
  * [customizations](https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/)
* [base-16 colour schemes](https://github.com/chriskempson/base16)
  * **Note:** I've found the best way to get/use these is to use [`base16-shell`](https://github.com/chriskempson/base16-shell) as it'll make things work nicely in vim, ssh, tmux, etc.
* [Meld merge/diff tool](https://meldmerge.org/)
* Sketch
* Pixelmator
* Postman
