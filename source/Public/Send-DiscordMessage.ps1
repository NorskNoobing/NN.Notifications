function Send-DiscordMessage {
    param (
        [Parameter(Mandatory)][string]$message,
        [Parameter(Mandatory)][string]$uri
    )

    $InvokeRestMethodSplat = @{
        Body = [PSCustomObject]@{
                content = $message
            } | ConvertTo-Json
            
        ContentType = 'Application/Json'
        Method = 'POST'
        Uri = $uri
    }
    Invoke-RestMethod @InvokeRestMethodSplat
}