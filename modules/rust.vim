let mod_rust = 1

" Rust
Plug 'rust-lang/rust.vim', { 'for': ['rust'] }

" TOML
Plug 'cespare/vim-toml', { 'for': ['toml'] }

" Rust Language Completion
if(mod_completion)
    Plug 'neoclide/coc-rls', { 'do': 'yarn install --frozen-lockfile' }
end
