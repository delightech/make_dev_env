# https://qiita.com/sifue/items/20ae88730ab929ccf420
set -x PS1 '\u \W $ '
alias ll='ls -l'

set -x GOPATH $HOME/.go
set -x PATH $GOPATH/bin $PATH
set -x PATH $HOME/bin $PATH

# for embulk
set -x BQ_DATASET "dev"
set -x KN_DATA "/Users/delightech/work/ia-dwh/kintone/data"
set -x SR_DATA "/Users/delightech/work/instyle_group/sumarejidump_data/data"
set -x SR_ROOT "/Users/delightech/work/ia-dwh/sumareji"
set -x JSON_KEY_FILE "/Users/delightech/work/instyle_group/gcp.json"

alias embulk="java -jar $HOME/.embulk/bin/embulk"
alias digdag="java -jar $HOME/bin/digdag"
alias uri_esc='perl /Users/delightech/work/Utils/src/perl/easy_uri_escape.pl'
alias uri_unesc='perl /Users/delightech/work/Utils/src/perl/easy_uri_unescape.pl'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/delightech/work/google-cloud-sdk/path.fish.inc' ]; . '/Users/delightech/work/google-cloud-sdk/path.fish.inc'; end
set -x PATH $HOME/bin $PATH
