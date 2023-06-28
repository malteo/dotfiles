set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

source ~/.vimrc

lua <<EOF
require 'colorizer'.setup {
  user_default_options = { css = true, css_fn = true }
}
EOF
