@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 3dbe77657d91419c915977d009c1e652 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot UART_tx_ctrl_tb_behav xil_defaultlib.UART_tx_ctrl_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
