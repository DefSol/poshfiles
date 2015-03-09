$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$psUserProfile = "$env:USERPROFILE\Documents\WindowsPowerShell"

copy-item -Path $here\* -Destination $psUserProfile -Recurse -Force -Exclude('Deploy.ps1', 'Readme.md', '*.gitignore', '*.git') 


Get-ChildItem $psUserProfile -Filter Microsoft.PowerShell*Profile* | `
Foreach-Object{
    $file = $_.FullName
    if(!(Get-Content -Path $file | Select-String -Pattern '#Pimped Profile Inlcude')){
        Add-Content $file "`n #Pimped Profile Inlcude `n . `"$env:UserProfile\documents\WindowsPowerShell\PowerShell_Profile_Pimped.ps1`""
    }    
}

if(!(Test-Path $env:USERPROFILE\bin)){
    New-Item -Type directory -Name bin -Path $env:USERPROFILE
}