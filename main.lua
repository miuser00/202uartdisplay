
--必须在这个位置定义PROJECT和VERSION变量
--PROJECT：ascii string类型，可以随便定义，只要不使用,就行
--VERSION：ascii string类型，如果使用Luat物联云平台固件升级的功能，必须按照"X.X.X"定义，X表示1位数字；否则可随便定义
PROJECT = "UART_DISPLAY"
VERSION = "0.0.1"

require "sys"
require "lcd"
require "ui"
require "muart"
require "wdt"

speech="合宙Luat祝大家新春快乐，鼠年大吉"

--启动系统框架
sys.init(0, 0)

sys.run()





