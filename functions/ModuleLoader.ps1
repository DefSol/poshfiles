function Load-DefaultModules{
    <#
    .SYNOPSIS
    Loads the default modules for an instance of either host or ISE
    
    .DESCRIPTION
    Loads a pre defined set of modules for either instance of a console host or an ISE Editor host. As some plugins for ISE
    only work with the ISE host, this prevents nasty error messages when trying to load ISE specific modules in a console host.
    I also that a generic load all module is too long and would prefer to load only the modules I will really use and gain better
    start up times.
    
    .PARAMETER IsISEhost
    Indicates the the console host is an ISEEditor and to load all default ISEModules.
#>
    param(
        [Parameter(Position=0)]
        $IsISEHost = $false
    )

    $defaultModules = @('PsGet', 'OneGet', 'Azure', 'ISE')
    $defaultISEModules = @('FunctionExplorer', 'ISESciprtingGeek', 'PSharp', 'PsISEProjectExplorer', 'Pester')

    $allmodules = Get-Module -ListAvailable
    $defaultModules | Where-Object ($allmodules -contains $_)| Import-Module
    
    if($IsISEHost){
        $defaultISEModules | Where-Object ($allmodules -contains $_)| Import-Module
    }

}
