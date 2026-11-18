# C:\Users\Admin\Documents\WindowsPowerShell
function history-clear {
    $savePath = (Get-PSReadLineOption).HistorySavePath
    [Microsoft.PowerShell.PSConsoleReadLine]::ClearHistory()
    Clear-History
    [System.IO.File]::WriteAllText($savePath, '')
}

function dsh-update {
    & npm.cmd install -g '--allow-scripts=@deepseek-ai/dsh-subprocess-local,koffi,node-pty,@google/genai,protobufjs' '@deepseek-ai/dsh@next'
    & dsh plugin --profile web outdated
}

Set-PSReadlineKeyHandler -Key Ctrl+d -Function DeleteCharOrExit