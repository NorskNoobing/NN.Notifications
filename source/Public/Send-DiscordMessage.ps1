function Send-DiscordMessage {
    param (
        [Parameter(Mandatory)][string]$Message,
        [Parameter(Mandatory)][string]$Uri
    )

    $Splat = @{
        "Uri" = $Uri 
        "Method" = "POST"
        "ContentType" = "Application/Json"
        "Body" = @{
            "content" = $Message
        } | ConvertTo-Json
    }
    Invoke-RestMethod @Splat
}