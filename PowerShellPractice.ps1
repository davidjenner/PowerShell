# -------- Basic Notes ---------
<# ISE - Intergrated Scrpting Environment
Everything in PowerShell is an OBJECT
To see the version - $PSVersionTable.PSVersion
To ping a website - ping spacex.com
#>

# -------- Learning Tools ---------
# Vidoes used - https://youtu.be/ZOoCaWyifmI?si=rMnplrySHUomcHLh

# -------- About cmdlets ---------
# Verb-Noun - unless custom function

<# Policy Details
To see the policy - Get-ExecutionPolicy
Execution Policy - Restricted by default 
To change - Set-ExecutionPolicy RemoteSigned
Once on RemoteSigned you can run custom scripts
#>

# -------- Basic Cmdlets ---------
# Basic Hello World!------ parameter
# Write-Host "Hello World! " -NoNewline
# Write-Host "Hello Again!"

# Find command - Get-Command
#Get-Command -CommandType Cmdlet

# Help guides - Get-Help
# Get-Help Write-Host -Full

# -------- Piping Cmdlets ---------

#"May the force be with you!" | Out-File forcewithwho.txt
# use cat .\forcewithwho.txt to show content

# -------- Variables ---------

#$FavCharachter = "Spongebob"
# Type in $FavCharachter to output the variable
# to output
# $FavCharachter | Out-File FavCharachter.txt
# cat .\FavCharachter.txt

# find out type of variable
# $FavCharachter.GetType()

# Find out ALL the preperties
# $FavCharachter | Select-Object -Property *

#Get-Member -InputObject $FavCharachter
# Get-Type is a method that can be called on the object
# This tells you everything you can do to the object


# -------- Array ---------

#$Jedi = @('Matthew','Mark','Luke','John')
# IF you type $Jedi.GetType() youll see the type
# In this case it's an array

# To see the first Jedi - $Jedi[0]
#Remember each array starts at ZERO
# $Jedi[0]

#To add somone to it
# $Jedi += "David"
# $Jedi += "David"

# -------- Hastable ---------

# Specify keys and add more context

#$Family = @{David = "Dad"; Steph ="Mum"; Charlotte ="Daughter"}
# To add something to hash table
#$Family.Add("Midnight","Cat")


# ----- Messing around / Co-Polit Scripts ------

# Sort Processes by top 10 using most memory
#Get-Process | Sort-Object WorkingSet64 -Descending | Select-Object -First 10

# Clear all the broswing data in Edge
# Get-AppXPackage -AllUsers -Name Microsoft.MicrosoftEdge | Foreach { Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml" -Verbose }

# Get last shutdown time
#$lastShutdownEvent = Get-WinEvent -LogName 'System' -MaxEvents 1 | Where-Object { $_.Id -eq 1074 }
#$lastShutdownTime = $lastShutdownEvent.TimeCreated

#Write-Host "Last Shutdown Time: $lastShutdownTime"


# Get pending updates
<#
$MissingUpdates = Get-WmiObject -Class CCM_SoftwareUpdate -Filter ComplianceState=0 -Namespace root\\CCM\\ClientSDK
$MissingUpdatesReformatted = @($MissingUpdates | ForEach-Object { if ($_.ComplianceState -eq 0) { [WMI]$_.__PATH } })

if ($MissingUpdatesReformatted) {
    # Install updates
    $InstallReturn = Invoke-WmiMethod -ComputerName $env:computername -Class CCM_SoftwareUpdatesManager -Name InstallUpdates -ArgumentList (,$MissingUpdatesReformatted) -Namespace root\\ccm\\clientsdk
    Write-Host "Updates found and initiated."
} else {
    Write-Host "No updates found."
}
#>


# ----- use clear to clear the screen------

