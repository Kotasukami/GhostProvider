@echo off

set nombreNetworkProvider=<nombre_netprov>

reg add "HKLM\SYSTEM\CurrentControlSet\Services\%nombreNetworkProvider%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\%nombreNetworkProvider%\NetworkProvider" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\%nombreNetworkProvider%\NetworkProvider" /v Class /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\%nombreNetworkProvider%\NetworkProvider" /v Name /t REG_SZ /d %NetworkProviderName% /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\%nombreNetworkProvider%\NetworkProvider" /v ProviderPath /t REG_EXPAND_SZ /d C:\Users\Public\<nombre_dll>.dll /f //colocar la ruta donde se ubica la DLL

for /f "tokens=2*" %%A in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\NetworkProvider\Order" /v ProviderOrder') do set ProviderOrder=%%B
set NewProviderOrder=%ProviderOrder%,%nombreNetworkProvider%

reg add "HKLM\SYSTEM\CurrentControlSet\Control\NetworkProvider\Order" /v ProviderOrder /t REG_SZ /d %NewProviderOrder% /f


