" ==================== Basic Mappings ====================
let mapleader=" "
nnoremap <C-q> :q<CR>
nnoremap <C-s> :w<CR>
" Undo operations
noremap <C-z> u
" Insert Key
noremap k i
noremap K I
" Search
noremap <C-f> :nohlsearch<CR>

" insert a pair of {} and go to the next line
inoremap <c-y> <ESC>A {}<ESC>i<CR><ESC>ko
" ==================== Cursor Movement ====================
" New cursor movement (the default arrow keys are used for resizing windows)
"     ^
"     e
" < h   i >
"     n
"     v
noremap <silent> h h
noremap <silent> n j
noremap <silent> e k
noremap <silent> i l
" U/E keys for 5 times u/e (faster navigation)
noremap <silent> E 5k
noremap <silent> N 5j
" N key: go to the start of the line
noremap <silent> H 0
" I key: go to the end of the line
noremap <silent> I $
" set y to 'end of word'
noremap y e
" set l to next word
noremap l w
" Ctrl + n or e will move up/down the view port without moving the cursor
noremap <C-n> 5<C-y>
noremap <C-e> 5<C-e>
" Custom cursor movement
source $HOME/.config/nvim/cursor.vim