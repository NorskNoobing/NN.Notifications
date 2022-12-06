function Send-TeamsMessage {
    param (
        [Parameter(Mandatory)]$Message,
        [Parameter(Mandatory)]$Uri
    )

    $Splat = @{
        "Uri" = $hookUri
        "Method" = "POST"
        "ContentType" = "Application/Json"
        "Body" = @{
            "text" = $message
        } | ConvertTo-Json
    }
    Invoke-RestMethod @Splat
}