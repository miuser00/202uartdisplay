--- 模块功能：LOGO界面
-- @author openLuat
-- @module ui.logo
-- @license MIT
-- @copyright openLuat
-- @release 2018.03.27

module(...,package.seeall)

require"uiWin"
require"prompt"
require"idle"

local buff=""

function clr()
    --清空LCD显示缓冲区
    disp.clear()
    --刷新LCD显示缓冲区到LCD屏幕上
    disp.update()
end

function showText(text,s)
    --清空LCD显示缓冲区
    --disp.clear()
    lcd.setcolor(0x001F)
    disp.putimage("/ldata/logo_"..(lcd.BPP==1 and "mono.bmp" or "color.png"),lcd.BPP==1 and 41 or 0,lcd.BPP==1 and 18 or 0)
    --disp.setbkcolor(BLACK)
    disp.puttext("---UART Port1---",0,0)
    lcd.setcolor(0xFFFF)
    if (line==nil) then
        disp.puttext(text,0,32)
    else
        disp.puttext(text,0,(line+1)*16)
    end
    disp.update()
end

showText("UART DISPLAY    V0.01")
