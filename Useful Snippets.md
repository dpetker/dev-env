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
