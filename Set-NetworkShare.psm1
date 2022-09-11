function Set-NetworkShare {
    <#
    .SYNOPSIS
        Shares a specified file over a local network

    .DESCRIPTION
        Create-Network-Share is a fucntion that accepts a filename as a parameter and returns a 
        brief message about how to access the file from another networked device.
    
    .PARAMETER Path
        Relative file path to the specified file or directory that you wish to share.

    .EXAMPLE
        Create-Network-Share -Path .\directoryName\fileName.extension

    .EXAMPLE
        Create-Network-Share -Path .\fileName.extension

    .INPUTS
        None

    .OUTPUTS
        String

    .NOTES
        Author: Willisman31
        License: GPL-2.0
    #>
    param (
        [Parameter(Mandatory)]
        [string]$Path
    )

    PROCESS {
        try {
            $item = Get-Item $Path
            Set-SmbShare -Name $item.Name -EncryptData $True -CompressData $True
        } catch {
            Write-Warning -Message "Error with execution; file share may have been unsuccessful"
        }
    }
}
