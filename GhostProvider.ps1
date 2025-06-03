   Write-Host "
 _____ _               _  ______               _     _           
|  __ \ |             | | | ___ \             (_)   | |          
| |  \/ |__   ___  ___| |_| |_/ / __ _____   ___  __| | ___ _ __ 
| | __| '_ \ / _ \/ __| __|  __/ '__/ _ \ \ / / |/ _` |/ _ \ '__|
| |_\ \ | | | (_) \__ \ |_| |  | | | (_) \ V /| | (_| |  __/ |   
 \____/_| |_|\___/|___/\__\_|  |_|  \___/ \_/ |_|\__,_|\___|_|" -NoNewline


 $currentDirectory = Get-Location

 Copy-Item "$currentDirectory\txt_test.txt" -Destination "C:\Users\Usuario\Desktop\PoCNetProv"