
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

function kx([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl config use-context $params }
function kube([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl $params }
function stage([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --context stage $params }
function prod([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --context prod-eu $params }
function prod-eu([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --context prod-eu $params }
function prod-us([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --context prod-us $params }

Import-Module posh-git
Import-Module Get-ChildItemColor
Set-PoshPrompt -Theme 'C:\Users\jlo\OneDrive - Siteimprove, Inc\Documents\PowerShell\OhMyPosh\.custom.hack.theme.json'
