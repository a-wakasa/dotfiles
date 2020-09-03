augroup filetypedetect
  au BufRead,BufNewFile *.py setfiletype python
  au BufRead,BufNewFile *.yml setfiletype yaml
  au BufRead,BufNewFile *.yaml setfiletype yaml
  au BufRead,BufNewFile *.yml.liquid setfiletype yaml
  au BufRead,BufNewFile *.rb setfiletype ruby
  au BufRead,BufNewFile *.php setfiletype php
  au BufRead,BufNewFile *.swift setfiletype swift
augroup END
