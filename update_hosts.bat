@echo off
setlocal

REM Defina o URL do arquivo hosts.txt no seu repositório do GitHub
set "githubUrl=https://raw.githubusercontent.com/Eduardofp17/blocking-websites-windows/main/hosts.txt"

REM Defina o caminho completo para o arquivo hosts atual
set "hostsFile=%windir%\System32\drivers\etc\hosts"

REM Use o comando 'curl' para baixar o arquivo hosts.txt do GitHub e adicionar o conteúdo ao arquivo hosts atual
curl -s "%githubUrl%" >> "%hostsFile%"

endlocal
