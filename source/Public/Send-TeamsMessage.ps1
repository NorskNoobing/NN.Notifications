function Send-TeamsMessage {
    param (
        [Parameter(Mandatory)]$message,
        [Parameter(Mandatory)]$hookUri
    )

    $InvokeRestMethodSplat = @{
        Body        = [PSCustomObject]@{
            text = $message
        } | ConvertTo-Json
            
        ContentType = 'Application/Json'
        Method      = 'POST'
        Uri         = $hookUri
    }
    Invoke-RestMethod @InvokeRestMethodSplat
}