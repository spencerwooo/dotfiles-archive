![img](https://i.loli.net/2018/05/31/5b0ff51dc2bf9.png)

# awesome-alias

![love](https://img.shields.io/badge/Made%20with-LOVE-ff69b4.svg)
[![license](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![zsh](https://img.shields.io/badge/configured%20for-zsh-brightgreen.svg)](https://github.com/robbyrussell/oh-my-zsh)

> Some of my favorite aliases for my .zshrc file.

## Usage

1. First run `git clone https://github.com/spencerwoo98/awesome-alias` in a folder you like.
2. Then copy & paste all of `zshrc` into your own `.zshrc` file, usually located in `$HOME/.zshrc`.
3. Tweak the aliases according to your own configs.
4. Run `source $HOME/.zshrc` and you are good to go!
5. Enjoy~ :beer:

## Something to notice

Some of the things you must change are:

1. Line 13: `alias fuckgfw`, change proxy configs according to your own system proxy ports.
2. Line 19: `alias gocode`, change $PATH_TO_YOUR_CODE to your code repo path.
3. Line 32: `alias sshsvr`, change $PATH_TO_KEY and $SERVER_IP according to your own configs. This `alias` is used to ssh onto a remote server you own. If you don't have said server, you can ignore this.

## Something else to notice:

**`alias gocode`'s dependencies:**

- `fortune`: Generate a random quote by a random person.

![img](https://i.loli.net/2018/05/31/5b0fdd7abdb6c.jpg)
 
- `cowsay`: Draws a cow in ascii, and says something.

![img](https://i.loli.net/2018/05/31/5b0fddea0f161.jpg)

Both are available via `brew install ..` or `apt-get install ..` or other package managers on your devices, I believe.

## Oh-my-zsh default alias

A complete list of oh-my-zsh default alias can be found [here](https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git/git.plugin.zsh), but below are some of my favorites.

`gst`: is short for `git status`.

`gaa`: is short for `git add --all`.

`glola`: prints a nice commit history. I really like this BTW. :star:

![img](https://i.loli.net/2018/05/31/5b0fdfd7a21e4.jpg)

## Contributing

Fork away! :heart: Don't forget to PR back, I look forward to seeing your aliases. :beer:

## License

This is published via the [MIT License](https://github.com/spencerwoo98/awesome-alias/blob/master/LICENSE).
