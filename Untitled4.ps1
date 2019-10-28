#Kopijuojami failai iš gamybinės direktorijos į atsarginę, taip tap komandos /xo pagalba perkeliami tik po paskutinio kopijavimo modifikuoti failai
#/log komanda sukuriamas script'o log'as
ROBOCOPY C:\Users\gytis.ka8869\Desktop\gamybinis C:\Users\gytis.ka8869\Desktop\atsarginis /xo /log+:C:\Users\gytis.ka8869\Desktop\backup.log 
#Objektas zip failo direktorijai saugoti
$zip = "C:\Users\gytis.ka8869\Desktop\atsarginis.zip"
#Visi atsarginiame aplanke esantys failai sukeliami i atsarginis.zip faila
Compress-Archive -Path C:\Users\gytis.ka8869\Desktop\atsarginis\* -Update -DestinationPath $zip
#Pridedama informacija apie sukurta zip faila i log
Add-Content C:\Users\gytis.ka8869\Desktop\backup.log  "Sukurtas zip failas $zip"
#Gaunamas prisijungusiu vartotojo vardas
$name =[System.Security.Principal.WindowsIdentity]::GetCurrent().Name
#Nuo gauto vardo nutrinama "KK"
$name = $name.Trim("KK")
#Nuo gauto vardo nutrinamas bruksnelis
$name = $name.Trim("\")
#Prie log'o pridedamas prisijungusio vartotojo vardas
Add-Content C:\Users\gytis.ka8869\Desktop\backup.log "Prisijunges vartotojas : $name"