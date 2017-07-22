## zshconfig

My public zshrc (Zsh config) backup

### Install and set up zsh as default

If necessary, follow these steps to install Zsh:

1. There are two main ways to install Zsh
  - with the package manager of your choice, _e.g._ `sudo apt-get install zsh`
  - from [source](http://zsh.sourceforge.net/Arc/source.html), following
        [instructions from the Zsh FAQ](http://zsh.sourceforge.net/FAQ/zshfaq01.html#l7)
2. Verify installation by running `zsh --version`. Expected result: `zsh 5.1.1` or more recent.
3. Make it your default shell: `chsh -s $(which zsh)`
  - Note that this will not work if Zsh is not in your authorized shells list (`/etc/shells`)
    or if you don't have permission to use `chsh`. If that's the case [you'll need to use a different procedure](https://www.google.com/search?q=zsh+default+without+chsh).
4. Log out and login back again to use your new default shell.
5. Test that it worked with `echo $SHELL`. Expected result: `/bin/zsh` or similar.

### Requirements

* **Linux or MacOS X**
* **Zsh shell**
* **[Powerlevel9k Theme][Powerlevel9k]**
* **[Oh My Zsh Framework][oh-my-zsh]**
* **Git**

### Manual set up

Download or clone the project and put it on `~/.zshrc` located on you personal folder.  
To install the plugins, you will need to install `oh-my-zsh`. Instructions are present on [his README][oh-my-zsh-readme].

### Plugins and Themes

To see which plugins do I use, read the `zshrc` file.  
I you want install other plugins or themes you should read the [oh-my-zsh README][oh-my-zsh-readme] and [Plugins Overview](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins-Overview).

[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh
[oh-my-zsh-readme]: https://github.com/robbyrussell/oh-my-zsh/blob/master/README.md#getting-started
[Powerlevel9k]: https://github.com/bhilburn/powerlevel9k
