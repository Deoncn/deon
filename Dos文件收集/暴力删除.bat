@echo off
if not exist \\?\%1 (
   echo ��Ҫɾ�����ļ����������򼴿�,����ֱ�����б�����    echo BY ma6174    pause   exit
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