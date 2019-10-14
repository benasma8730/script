#Returns a WindowsIdentity object that represents the current Windows user.
$xml =[Security.Principal.WindowsIdentity]::GetCurrent().Name
#Trims the output (removes K and \ symbols)
$xml =$xml.Trim("K","\")
#Creates an XML-based representation of an object or objects and stores it in a file. 
$xml | Export-Clixml C:\Users\benas.ma8730\Documents\Vartotojai.xml
#The Read-Host cmdlet reads a line of input from the console
Read-Host -Prompt "Press Enter to exit"