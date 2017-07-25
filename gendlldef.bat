@echo off
if exist "%1.def" (
  del %1.def
)
set /A c = 0
echo EXPORTS >> %1.def
if exist c:\windows\system32\%1.dll (
  for /f "tokens=4,3,1" %%i in ('dumpbin /exports c:\windows\system32\%1.dll') do (
    set /A c=!c!+1
    if !c! gtr 12 (
      if (forwarded==%%k (
        echo %%j @ %%i >> %1.def
      ) else (
        if not "%%k"=="" (
          echo %%k @ %%i >> %1.def
        )
      )
    )
  )
  echo complete
) else (
  echo system dll not exists!
)
@echo on
