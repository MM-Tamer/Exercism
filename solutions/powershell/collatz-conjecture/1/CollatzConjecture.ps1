Function Invoke-CollatzConjecture() {

    [CmdletBinding()]
    Param(
        [Int64]$Number
    )
    if($Number -lt 1){
       throw "error: Only positive numbers are allowed"
    }
    $stepCount = 0
    while($Number -ne 1){
        if(($Number % 2) -eq 0){
            $Number /= 2
            $stepCount++
        }else {
            $Number = $Number * 3 + 1
            $stepCount++
        }
    }
    return $stepCount
}
