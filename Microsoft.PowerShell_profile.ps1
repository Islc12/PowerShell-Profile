function la { Get-ChildItem -Hidden }
function clsls { Clear; Get-ChildItem }
function stopped { Get-Service | Where-Object {$_.Status -eq "Stopped"} }
function running { Get-Service | Where-Object {$_.Status -eq "Running"} }

Set-PSReadLineKeyHandler -Chord Ctrl+p -Function PreviousHistory
Set-PSReadLineKeyHandler -Chord Ctrl+n -Function NextHistory
Set-PSReadLineKeyHandler -Chord Alt+p -Function BackwardChar
Set-PSReadLineKeyHandler -Chord Alt+n -Function ForwardChar
Set-PSReadLineKeyHandler -Chord Ctrl+Alt+p -Function BackwardWord
Set-PSReadLineKeyHandler -Chord Ctrl+Alt+n -Function NextWord
