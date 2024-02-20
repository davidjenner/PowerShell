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

# Hastable video section - https://youtu.be/ZOoCaWyifmI?si=0HPZXlAFKHOIS2-d&t=2035
# Specify keys and add more context

#$Family = @{David = "Dad"; Steph ="Mum"; Charlotte ="Daughter"}
# To add something to hash table
#$Family.Add("Midnight","Cat")

# -------- Collecting user input  ---------

# User input video section - https://youtu.be/ZOoCaWyifmI?si=wyg1SjZTQglqYw27&t=2382

<#Write-Host "What is your Fav game system?"
Write-Host "1. NES"
Write-Host "2. Wii"
Write-Host "3. N64"
$FavSystem = Read-Host "Fav game system?"
#>

<#
$PokemonCaught = "808"
If ($PokemonCaught -eq 908) {
    Write-Host "You're a Pokemon Master!"
   }Else {
    Write-Host "Go catch more Pokemon!"
   }
#>

<#
$PokemonNum = 200
If($PokemonNum -ge 0 -and $PokemonNum -le  151) { #Greater than / Less than - or equal to
    Write-Host "Your Pokemon is from Kanto!"
} Elseif ($PokemonNum -ge 152 -and $PokemonNum -le  251){
    Write-Host "Your Pokemon is from Johto!"
} Elseif ($PokemonNum -ge 252 -and $PokemonNum -le  386){
    Write-Host "Your Pokemon is from Hoenn!"
}
#>

# -------- Switch Statement  ---------

# User input video section - https://youtu.be/ZOoCaWyifmI?si=S8kK4jUq4w58iqV2&t=3168

<#
$House = "Cat"
Switch($House) {
    "Person" { Write-Host "Hello!": break }
    "Cat" { Write-Host "Meow!": break }
    "dog" { Write-Host "Woff!": break }
}
#>

# -------- For loop  ---------

# For loop video section - https://youtu.be/ZOoCaWyifmI?si=i2yMoE4Za7B2tyFP&t=3385

<#
$Pets = @('cat','dog','fish','lizard','snake')
For($counter =0;$counter -le ($Pets.Length - 1);$counter++){
    Write-Host "Hey, it's" $Pets[$counter]
}
#>

# -------- For each loop  ---------

# For each loop video section - https://youtu.be/ZOoCaWyifmI?si=9y9EWQ0sgXRyB5ep&t=3772

<#
$Pets = @('cat','dog','fish','lizard','snake')
Foreach ($Pet in $Pets) {
    Write-Host $Pet "has arrived!"
}
#>

# -------- For while loop  ---------

# For while loop video section - https://youtu.be/ZOoCaWyifmI?si=qW3DVh74GfaRl-Lb&t=3851

<#
$Office = @('Jim','Pam','Dwight','Michael')
$counter = 0 
While($counter -ne 4) {
    Write-Host $Office[$counter] "is going to the Mall! " -NoNewline
    $Office[$counter].Length
    $counter++;
}
#>

# ----- Messing around / Co-Pilot Scripts ------

# Sort Processes by top 10 using most memory
#Get-Process | Sort-Object WorkingSet64 -Descending | Select-Object -First 10

# ----- use clear to clear the screen------
