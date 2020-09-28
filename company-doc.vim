"SET Comment START
autocmd BufNewFile *.php exec ":call SetComment()" |normal 10Go

func SetComment()
    if expand("%:e") == 'php'
        call setline(1, "<?php")
    elseif expand("%:e") == 'js'
        call setline(1, '//JavaScript file')
    elseif expand("%:e") == 'cpp'
        call setline(1, '//C++ file')
	elseif expand("%:e") == 'py'
		call setline(1, '#!/usr/bin/env python3')
		call append(1, '#coding:utf-8')
		return 0
    endif
    call append(1, '/**************************************************************************')
    call append(2, ' *')
    call append(3, ' * Copyright (c) '.strftime("%Y"). ' Zuoyebang.com, Inc. All Rights Reserved')
    call append(4, ' *')
    call append(5, ' **************************************************************************/')
    call append(6, '')
    call append(7, '')
    call append(8, '/**')
    call append(9, ' * @filename:      '.expand("%"))
    call append(10, ' * @class:         '.expand("%:r"))
    call append(11, ' * @author:        taolintao@zuoyebang.com')
    call append(12, ' * @desc:          ---')
    call append(13, ' * @create:        '.strftime("%Y-%m-%d %H:%M:%S"))
    call append(14, ' * @last modified: '.strftime("%Y-%m-%d %H:%M:%S"))
    call append(15, ' */')
    call append(16, 'class '.expand("%:r"))
    call append(17, '{')
    call append(18, '}')
endfunc

map <F5> :call SetComment()<CR>:12<CR>
"SET Comment END
