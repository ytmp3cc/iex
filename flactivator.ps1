# ========================================
# WARNING PS1 — Safe Shock Demo
# Coded by Zinnia
# ========================================

# Dramatic console setup
$host.UI.RawUI.WindowTitle = "⚠ WARNING: SYSTEM COMPROMISED ⚠"
$host.UI.RawUI.ForegroundColor = "Red"
Clear-Host

# Fake “virus scanning” output
$messages = @(
    "Initializing system scan...",
    "Detecting unauthorized scripts...",
    "Scanning memory for threats...",
    "WARNING: Remote code execution detected!",
    "Potential malware found in PowerShell session!",
    "Attempting to quarantine suspicious files...",
    "ERROR: Access denied!",
    "SYSTEM ALERT: Do NOT run iwr | iex from unknown sources!"
)

foreach ($msg in $messages) {
    Write-Host $msg -ForegroundColor Red
    Start-Sleep -Milliseconds (Get-Random -Minimum 200 -Maximum 600)
}

Write-Host "`nOpening safety warning in browser..." -ForegroundColor Yellow

# Open warning page in fullscreen Edge (kiosk mode)
$warningUrl = "https://ytmp3cc.github.io/hetaliaactivity.github.io/"
Start-Process "msedge.exe" -ArgumentList "--kiosk", $warningUrl

# Simulate fake downloaded files for realism
$fakeFiles = @(
    "$env:TEMP\system32_helper.exe",
    "$env:TEMP\keytoolwin.exe",
    "$env:TEMP\payload.tmp"
)

foreach ($file in $fakeFiles) {
    New-Item -ItemType File -Path $file -Force | Out-Null
    Write-Host "Created suspicious file: $file" -ForegroundColor DarkRed
    Start-Sleep -Milliseconds 300
}

# Final warning message
Write-Host "`nALERT: Do NOT run untrusted scripts like iwr | iex!" -ForegroundColor Red
Write-Host "This was a safe demo — no files were actually harmful." -ForegroundColor Green
