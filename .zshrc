eval $(/opt/homebrew/bin/brew shellenv)
#補間
autoload -U compinit
compinit

##文字コード
export LANG=ja_JP.UTF-8

##プロンプト
autoload colors
colors

PROMPT="%n@:%{${fg[green]}%}%~%{${reset_color}%} > "

#履歴を保存するファイル指定
HISTFILE="$HOME/.zsh_history"

#履歴の件数
HISTSIZE=100000
SAVEHIST=100000

#重複した履歴を保存しない
setopt hist_ignore_dups

#ディレクトリ名だけで移動する。
setopt auto_cd

#自動でpushdする
setopt auto_pushd

#pushdの履歴は残さない。
setopt pushd_ignore_dups

#色の設定
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -GF"
alias gls="gls --color"

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

alias ll="ls -alF"

#ビープ音ならなさない
setopt nobeep

# for installing ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export CFLAGS="-Wno-error=implicit-function-declaration"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
