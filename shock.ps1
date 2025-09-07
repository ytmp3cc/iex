# warning.ps1 — Safe shock demo using iex
Write-Host "⚠ ALERT: You just ran iwr | iex!" -ForegroundColor Red
Write-Host "This would execute remote code and could infect your PC!" -ForegroundColor Red
Write-Host "`nOpening warning page in Edge..." -ForegroundColor Yellow

# Open your warning page in Edge fullscreen
Start-Process "msedge.exe" "--start-fullscreen https://pekora.app/powershellwarning.html"

# Optional: simulate a downloaded file for effect
$fake = "$env:TEMP\keytoolwin.exe"
New-Item -ItemType File -Path $fake -Force | Out-Null
Write-Host "`nFake file created at $fake (demo only)" -ForegroundColor Green
