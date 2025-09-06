Function Get-ColorCode {
    [CmdletBinding()]
    Param(
        [string[]]$Color
    )

    if ($null -eq $Color -or $Color.Count -eq 0) {
        throw "ERROR: Please enter a valid color"
    }

    $colors = Get-Colors

    $results = foreach ($c in $Color) {
        $colors.IndexOf($c.ToLower())
    }

    return $results
}

Function Get-Colors {
    @('black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white')
}
