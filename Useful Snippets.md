# Useful Snippets

This file contains snippets that are extremely useful, but only used seldomly (so easy to forget).

Note: most of these assume the system is Ubuntu (or similar)

## Setting Default Editor

```
$ sudo update-alternatives --config editor
```

## Passwordless Sudo

```
$ sudo visudo
```

Then add the line `<your username> ALL=(ALL) NOPASSWD:ALL`

## Remove `.DS_Store` Files

```
$ find . -name '.DS_Store' -type f -delete
```

## Hosts File Entries

Edit `/etc/hosts` and add entries of the form, `<IP Address> <hostname>`

## SSH Config Entries

Edit `~/.ssh/config` and add entries of the form:

```
Host <alias name (usually hostname)>
    HostName <hostname>
    ForwardAgent yes
    User <username to log in as>
```

## Passwordless SSH Connections

Copy over your `~/.ssh/id_rsa.pub` using `ssh-copy-id` or copy it manually to `<username>@<remote host>:/home/<username>/.ssh/authorized_keys`.

You'll also need to make sure your key is added to your main machine's ssh agent:

```
$ ssh-add -L
```

If your key isn't there, run `ssh-add -K`
* See: https://developer.github.com/guides/using-ssh-agent-forwarding/

## Basic git Config

```
$ git config --global user.name "Your Name Comes Here"
$ git config --global user.email you@yourdomain.example.com
$ git config --global color.ui true
```

## Colour Scheme

There's a `.itermcolors` file for use with iTerm, but here are the hex values, just in case:

```
#212121 //Ansi 0 Color
#b7141e //Ansi 1 Color
#7aba39 //Ansi 10 Color
#fee92e //Ansi 11 Color
#53a4f3 //Ansi 12 Color
#a94dbb //Ansi 13 Color
#26bad1 //Ansi 14 Color
#d8d8d8 //Ansi 15 Color
#7aba39 //Ansi 2 Color
#f5971d //Ansi 3 Color
#134eb2 //Ansi 4 Color
#a94dbb //Ansi 5 Color
#0e707c //Ansi 6 Color
#eeeeee //Ansi 7 Color
#424242 //Ansi 8 Color
#e83a3f //Ansi 9 Color
#222221 //Background Color
#b7141e //Bold Color
#16aec9 //Cursor Color
#dedede //Cursor Text Color
#e4e4e4 //Foreground Color
#3d3d3d //Selected Text Color
#dedede //Selection Color
```

Or use [this theme](https://github.com/MartinSeeler/iterm2-material-colors) based off Google's Material Design.

## Slack Theme

Also based on this colour theme:

`#3D3D3D,#424242,#16aec9,#eeeeee,#212121,#e4e4e4,#7aba39,#b7141e`

Or a slightly different Slack theme, based off Google's [Material Design colour palette](https://www.google.com/design/spec/style/color.html#color-color-palette):

`#424242,#212121,#0288D1,#FAFAFA,#212121,#FAFAFA,#4CAF50,#F44336`
