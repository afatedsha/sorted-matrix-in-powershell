function Start-massive {
    param (
        [int]
        $NumberMassive
    )
    $AllMassive = @()
    # формируем массив
    for ($i = 0; $i -lt $NumberMassive; $i++) {
        $Massive = @()
        $nm = $NumberMassive + 2
        $sizeMassive = Get-Random -InputObject (2..$nm)
        for ($c = 0; $c -le $sizeMassive; $c++) {
            $Massive += Get-Random 9
        }

        #сортируем массив по индексу
        if ($i%2 -eq 0){
            $SortMassive = $Massive.GetEnumerator() | Sort-Object
        } else {
            $SortMassive = $Massive.GetEnumerator() | Sort-Object -Descending
        }
        $AllMassive += '+' + $SortMassive
    }
    return $AllMassive
}