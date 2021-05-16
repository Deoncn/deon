@echo off
@echo 正在清理系统日志
FOR /F "delims=" %%I IN ('WEVTUTIL EL') DO (WEVTUTIL CL "%%I")