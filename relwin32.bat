set VE_VER=r2.0.1
set VE_VER_PHASE=release

mkdir OpenCVR-%VE_VER%-win32-%VE_VER_PHASE%
REM copy dir from client and vecvr
xcopy /y /e client\prj_win32\Win32\Release  OpenCVR-%VE_VER%-win32-%VE_VER_PHASE%
xcopy /y /e vecvr\prj_win32\Win32\Release  OpenCVR-%VE_VER%-win32-%VE_VER_PHASE%

REM cooy service file
xcopy /y /e output\windows\nssm\win32\nssm.exe  OpenCVR-%VE_VER%-win32-%VE_VER_PHASE%
xcopy /y  output\windows\regservice.bat  OpenCVR-%VE_VER%-win32-%VE_VER_PHASE%
xcopy /y  output\windows\unregservice.bat  OpenCVR-%VE_VER%-win32-%VE_VER_PHASE%

del  OpenCVR-%VE_VER%-win32-%VE_VER_PHASE%\*.pdb /f /s /q
del  OpenCVR-%VE_VER%-win32-%VE_VER_PHASE%\*.lik /f /s /q
del  OpenCVR-%VE_VER%-win32-%VE_VER_PHASE%\*.lib /f /s /q
del  OpenCVR-%VE_VER%-win32-%VE_VER_PHASE%\*.exp /f /s /q
