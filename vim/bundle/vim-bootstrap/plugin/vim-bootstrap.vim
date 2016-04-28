" Easily insert Bootstrap html
" Maintainer: Skusku <skusku@skusku.org>
" Last Change: 2016-04-18
" Version: 0.0.1
" Homepage:
" Repository:
" License: MIT
"

if exists('g:BootstrapLoaded')
  finish
end
let g:BootstrapLoaded = 1

function! g:CreateCards()
  let s:line=line(".")
  call setline(s:line, '<div className="card">')
  call append(s:line, ' <img className="card-img-top" data-src={ this.props.data.thumbnail  } alt={ this.props.data.title  } />')
  call append(s:line+1, '  <div className="card-block">')
  call append(s:line+2, '   <h4 className="card-title">{ this.props.data.title  }</h4>')
  call append(s:line+3, '  </div>')
  call append(s:line+4, '</div>')
endfunction

