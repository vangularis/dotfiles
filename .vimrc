" --------------------------------------
"           my vimrc setting
" --------------------------------------



" View ---------------------------------
syntax enable                           " �V���^�b�N�Xon
"colorscheme default                     " �J���[�X�L�[���̐ݒ�
colorscheme morning                     " �J���[�X�L�[���̐ݒ�
"colorscheme morning                     " �J���[�X�L�[���̐ݒ�
set background=light                    " �w�i�F�̌X��
set display=uhex                        " �󎚕s�\������16�i���ŕ\��
set cursorline                          " �J�[�\���s������
set number                              " �s�ԍ��\��
set ruler                               " �J�[�\���ʒu���E���ɕ\��
set showcmd                             " ���݂̃R�}���h���[�h��\��
set laststatus=2                        " �X�e�[�^�X���C����2�s��
set statusline=%<%f\ #%n%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%y%=%l,%c%V%8P
set nowrap                              " ��ʕ��Ő܂�Ԃ��Ȃ�
set list                                " �s�������\��
set listchars=tab:>\ ,trail:-           " �s�������̕\�����@
set scrolloff=5                         " �s����
set sidescrolloff=16                    " ���E�X�N���[�����̎��E���m��
set sidescroll=1                        " ���E�X�N���[���͈ꕶ���Âs��
set showmatch                           " ���ʂ̑Ή����n�C���C�g
hi ZenkakuSpace gui=underline guibg=DarkBlue cterm=underline ctermfg=LightBlue " �S�p�X�y�[�X�̒�`
match ZenkakuSpace /�@/                 " �S�p�X�y�[�X�̐F��ύX



" Commond ------------------------------
set wildmenu wildmode=list:full         " �R�}���h���C�����[�h��TAB�L�[�ɂ��t�@�C�����⊮��L���ɂ���
set history=100                         " �R�}���h���C���̗�����100���ۑ�����



" Assist inputting ---------------------
set backspace=indent,eol,start          " BS,Del�L�[�̉e���͈͂ɐ�����݂��Ȃ�
set whichwrap=<,>,[,]                   " �s���s���̃J�[�\���L�[�ōs���܂���
"set clipboard=unnamed,autoselect       " �o�b�t�@�ɃN���b�v�{�[�h�𗘗p����
nnoremap <silent> <CR> :<C-u>call append(expand('.'), '')<CR>j



" Search -------------------------------
set wrapscan                            " �Ō�܂Ō���������擪�֖߂�
set ignorecase                          " �啶������������
set smartcase                           " �啶�����܂܂�Ă�����啶���������������Ȃ�
set incsearch                           " �C���N�������^���T�[�`
set nohlsearch                            " �����������n�C���C�g
set gdefault                            " �u���̎� g �I�v�V�������f�t�H���g�ŗL���ɂ���



" File ---------------------------------
set autoread                            " �O������̍X�V���Ɏ����ēǍ���
set hidden                              " �ҏW���ł����̃t�@�C�����J����悤�ɂ���
set nobackup                            " �o�b�N�A�b�v�����Ȃ�
set confirm                             " �ۑ�����Ă��Ȃ��t�@�C��������Ƃ��͏I���O�ɕۑ��m�F
"autocmd BufWritePre * :%s/\s\+$//ge    " �ۑ����ɍs���̋󔒂���������



" Indent -------------------------------
set expandtab                           " �^�u���͂𕡐��̋󔒓��͂ɒu��������
set tabstop=4                           " ��ʏ�Ń^�u��������߂镝
set shiftwidth=4                        " �����C���f���g�ł���镝
set softtabstop=4                       " TAB�L�[�����������̑}�������󔒂̗�,BS�ɂ��e������
set autoindent                          " ���s���ɑO�̍s�̃C���f���g���p������
set smartindent                         " ���s���ɓ��͂��ꂽ�s�̖����ɍ��킹�Ď��̍s�̃C���f���g�𑝌�����



" Edit vimrc ---------------------------
nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>
nnoremap <Space>, :<C-u>source ~/.vimrc<CR>



" Charset, Line ending -----------------
"set termencoding=utf-8
"set encoding=utf-8
"set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp
"set ffs=unix,dos,mac            " LF, CRLF, CR
"if exists('&ambiwidth')
"    set ambiwidth=double        " UTF-8�́��⁛�ŃJ�[�\���ʒu������Ȃ��悤�ɂ���
"endif



" Key Mapping --------------------------
nnoremap <Space>h ^                     " �s���Ɉړ�
nnoremap <Space>l $                     " �s���Ɉړ�
nnoremap gs :<C-u>%s///g<Left><Left><Left>
vnoremap gs :s///g<Left><Left><Left>


" Vim�I�����Ɍ��݂̃Z�b�V������ۑ�����
au VimLeave * mks!  ~/vimsession

" �����Ȃ��N���̎��A�O���session�𕜌�
"autocmd VimEnter * nested if @% == '' && s:GetBufByte() == 0 | source ~/vimsession | endif
"function! s:GetBufByte()
"    let byte = line2byte(line('$') + 1)
"    if byte == -1
"        return 0
"    else
"        return byte - 1
"    endif
"endfunction


set runtimepath+=~/_vimfiles/
runtime! userautoload/*.vim



