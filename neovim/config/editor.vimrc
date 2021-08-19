syntax enable

let mapleader = ' ' " set leader key to Space

" WHITESPACE CONFIGURATION
" ----------------------------------
" highlight extra whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" auto-strip white spaces on save
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd BufWritePre * :call TrimWhiteSpace()
" ENDS

" Create file's directory before saving, if it doesn't exist.
" Original: https://stackoverflow.com/a/4294176/151048
" Copied from https://sharats.me/posts/automating-the-vim-workplace/
augroup BWCCreateDir
  autocmd!
  autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END
fun! s:MkNonExDir(file, buf)
  if empty(getbufvar(a:buf, '&buftype')) && a:file !~# '\v^\w+\:\/'
    call mkdir(fnamemodify(a:file, ':h'), 'p')
  endif
endfun

" run code using leader-r
" run ruby code only when inside a .rb file
autocmd BufRead, *.rb nmap <leader>r :!ruby %<cr>
autocmd BufRead, *.js nmap <leader>n :!node %<cr>

" search for visually selected text using //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

