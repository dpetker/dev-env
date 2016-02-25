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
