let s:log = [
			\'                                                                                     ',
			\'                       __      ___           _  __     _ _                           ',
			\'                       \ \    / (_)         | |/ /    | (_)                          ',
			\'                        \ \  / / _ _ __ ___ | * /_   _| |_ _ __                      ',
			\'                         \ \/ / | | *_ ` _ \|  <| | | | | | *_ \                     ',
			\'                          \  /  | | | | | | | * \ |_| | | | | | |                    ',
			\'                           \/   |_|_| |_| |_|_|\_\__, |_|_|_| |_|                    ',
			\'                                                  __/ |                              ',
			\'                                                 |___/                               ',
			\'                                                                                     ',
			\'                                  Just enjoy it!                                     ',
			\'                                author:coco-linux                                    ',
			\'                             email:2673483151@qq.com                                 ',
			\'                          Simple,  fast  and  efficient.                             ',
			\'            Direction determines the road, the road determines the fate.             ',
			\'        wellcome to my github ——https://github.com/TorvaldsRodriguez/VimKylin        ',
			\ ]

function! s:get_random_offset(max) abort
  return str2nr(matchstr(reltimestr(reltime()), '\.\zs\d\+')[1:]) % a:max
endfunction

function! startify#fortune#quote() abort
  return s:quotes[s:get_random_offset(len(s:quotes))]
endfunction

function! startify#fortune#dogesay() abort
  return map(s:log, '"   ". v:val')
endfunction
