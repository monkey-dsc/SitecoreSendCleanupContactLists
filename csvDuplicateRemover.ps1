$pathUnfiltered = Read-Host -Prompt 'Input the file path of the unfiltered csv file'
$pathFilters = Read-Host -Prompt 'Input the file path of the filter csv file'

$csvFilters = (Import-Csv $pathFilters -Delimiter ";") | Select-Object -Property Email
$csvUnfiltered = Import-Csv $pathUnfiltered -Delimiter ";"

$removedDuplicateRows = $csvUnfiltered | Where-Object {$_."E-Mail Address" -notin $csvFilters.Email}

$removedDuplicateRows | Select-Object * | Export-Csv -Path .\output.csv -NoTypeInformation -Delimiter ';'