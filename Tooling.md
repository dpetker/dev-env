# Tooling

This is a list of tooling I've found useful (OS X-focused).

## Editor

* Atom
  * file-icons
  * highlight-selected
  * linter
  * linter-eslint
  * minimap
  * pigments
  * react
  * revert-buffer
* Atom Themes
  * atom-material-syntax
  * monokai

Also with the following custom styleguide code:

```css
:host, atom-text-editor, atom-text-editor::shadow {
  // .highlights {
  //   // overridden for solarized LnF
  //   .highlight-selected .region {
  //     border-color: @yellow;
  //   }
  // }

  // This is for when Monokai/Solarized theme is on
  @bracketMatcherColor: #FDF6E3; // #F8F8F8 for Monokai, #FDF6E3 for Solarized
  .bracket-matcher .region {
    background-color: fadeout(@bracketMatcherColor, 40%);
    opacity: 0.3;
    border-bottom: 1px dotted @bracketMatcherColor;
  }

  // override a few variables for the Atom material theme
  // .indent-guide {
  //   color: fade( #65737E, 20% );
  // }
}
```

## Other Utilities

* iTerm2
  * oh-my-zsh
* Sketch
* Pixelmator
* VMWare Fusion (want to replace w/ Vagrant & VirtualBox eventually)
* Postman
