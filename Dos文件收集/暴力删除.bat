@echo off
if not exist \\?\%1 (
   echo 将要删除的文件托至本程序即可,不能直接运行本程序    echo BY ma6174    pause   exit
)
echo y|Cacls %* /c /t /p Everyone:f
DEL /F /A /Q \\?\%1
RD /S /Q \\?\%1
DEL /F /A /S /Q  %*
RD /S /Q \\?\%*
DEL /F /A /Q %*
RD /S /Q \\?\%*
DEL /F /A /S /Q \\?\%1
RD /S /Q \\?\%1