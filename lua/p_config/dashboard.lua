local d = require 'dashboard'
d.custom_header = {
    [[]],
    [[]],
    [[]],
    [[]],
    [[         _________  /\     __ __   __         __________ __                                  ]],
    [[         \_   ___ \|  |__ |__|  | |  | ____ __\______   \  | _____  _______ ____             ]],
    [[         /    \  \/|  |  \|  |  | |  | \   |  | |   |  _/  | \__  \ \___  // __ \            ]],
    [[         \     \____      \  |  |__  |__\___  | |   |   \  |__/ __ \_/   /\  ___/_           ]],
    [[          \______  /___|  /__|____/____// ____|/______  /____/____  /____ \\___  /           ]],
    [[                 \/     \/              \/            \/          \/     \/    \/            ]],
    -- [[t1111111111ifft1;1. ...............::,11t11iiiii1111111t11i11ii;L;1..,.,:,:.,;:f1111ft1111111]],
    -- [[111iii1i1tfii1t1.....................1,11;;;iii;1i11ti11i111iiii1t,;i1;..,;0CC.:L11tf1t111111]],
    -- [[1111111tt1111i:........,,,,.......,....11;1;;;;;1iiiiiitiiiii1i1i8...i0ft1LGttfi80t1t1t111111]],
    -- [[11111f11111,f....CGii;:...,.,.ifiLiGi,...1,i1;;;tiiiiiiiiiii;it,,.1G8CCtttGCCC0G00C008t1i1111]],
    -- [[1f1i111i1ff..,.;,iC8GCLttttL8GCLG8L;,.::..:1,f;;1;i;i;iii1ii11.,LCGGLttffGLi.LGG0G8Lt;t;;iit1]],
    -- [[11i1111t:.0L8LG;LGCLftffffGCGLffLGL8ffi.....1;i1;;;;;ii;iiiii.:1CC:111ftG:,,,,80L1i;;i;;;iL:;]],
    -- [[iii1i;t..G8fGLLtL88C8CtttfGiGC;,itLG8;t:;....,:1i;;;;;i;iiii:.,fCff8G:t1G,,,,fL1ft;;;1;;;;;::]],
    -- [[11itt8fCtffLLGLLG1fftLCGGiffGL:,,,,,.,f........;;;;;;i;it;i;...CftC8111G.,,.,C,Ltt;i;1:;;::;:]],
    -- [[11111it;GG0C.:,GGt11fGCGLtftGf,,,,,,,.........;;;;;;;;f:ii1.,..1ttt111f.,,,,,,1f;f;i;;;;;::::]],
    -- [[111i11t;,.,t1:,iGtti1111i11ii1,,,,,,,.........;;;;;;f,.fi1.,...,t::,,;,,,,,,,,t:if;i;if;;::::]],
    -- [[t1iiti1i,,,,,,;, t11i;i;::;:i.,,..i........,,i;;;;,,,,.f;.......tiiG1fG1i,,,,f,i;t;i;t1;::::1]],
    -- [[111ii11f1,,,,,,,,,:,ittf;1;;ii;,,i,,.......,1;;;;:..,t,.........,,,,,,,,,,,,ii,1t;iit;i;;;:;:]],
    -- [[i1i111111i,,,,,,,,,,,,,,,,,,,,,,,,,,......,;;;t,.,.,i..,........,,,,,,,,,,,,;:ifti1;i;1;;;i;;]],
    -- [[itiiii1i1i:,,,,,,,,,,,,,,,,,,,,,,,,,,...,;:i,.....,...        ..,,,,,,,,,,,,t,f1ii;ii;f;;:i1;]],
    [[]],
    [[]],
}
d.custom_center = {
    {
        icon = "  ",
        desc = "Projects       ",
        action = "Telescope projects",
    },
    {
        icon = "  ",
        desc = "Recently files ",
        action = "Telescope oldfiles",
    },
    {
        icon = "  ",
        desc = "Find file      ",
        action = "Telescope find_files",
    },
    {
        icon = "  ",
        desc = "Edit Maps      ",
        action = "edit ~/.config/nvim/lua/maps.lua",
    },
    {
        icon = "  ",
        desc = "Edit Projects  ",
        action = "edit ~/.local/share/nvim/project_nvim/project_history",
    },
}
d.custom_footer = {
    '夏の花の如く艶やかに生き、秋の枯葉の如く穏やかに终りを迎えよ',
}
