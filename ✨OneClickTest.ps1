
# Ejecutar como: powershell -ExecutionPolicy Bypass -File ✨OneClickTest.ps1

Write-Host "=== Configuración de dependencias 1.3 ===" -ForegroundColor Cyan
Write-Host "=== ✨OneClickTest ===" -ForegroundColor Cyan
Write-Host ""

Write-Host "[1/6] Verificando versión de Node.js..." -ForegroundColor Yellow
if (Get-Command node -ErrorAction SilentlyContinue) {
    $nodeVersion = node -v 2>&1
    Write-Host "      Node.js encontrado: $nodeVersion" -ForegroundColor Green
} else {
    Write-Host "ERROR: Node.js no está instalado" -ForegroundColor Red
    Write-Host "`nPresiona Enter para cerrar..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    exit
}
Write-Host ""

# Paso 2: Verificación previa: Versión de Python
Write-Host "[2/6] Verificando versión de Python..." -ForegroundColor Yellow


if (Get-Command python -ErrorAction SilentlyContinue) {
    $pythonVersion = python --version 2>&1
    $pythonExitCode = $LASTEXITCODE
    
    # Validar que sea una versión real (no error del Microsoft Store o similar)
    if ($pythonExitCode -eq 0 -and $pythonVersion -match "Python \d+\.\d+") {
        Write-Host "      Python encontrado: $pythonVersion" -ForegroundColor Green
        $pythonValid = $true
    } else {
        Write-Host "ERROR: Python detectado pero no funciona correctamente" -ForegroundColor Red
        Write-Host "      Mensaje: $pythonVersion" -ForegroundColor Red
        Write-Host "`nPresiona Enter para cerrar..." -ForegroundColor Gray
        $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    exit
    }
} else {
    Write-Host "ERROR: Python no está instalado" -ForegroundColor Red
    Write-Host "`nPresiona Enter para cerrar..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    exit
}
Write-Host ""

Write-Host "[3/6] Instalación de dependencias Node.js" -ForegroundColor Yellow
npm install -g docx
npm install -g postman-cli

Write-Host ""

Write-Host "[4/6] Instalación de dependencias Python" -ForegroundColor Yellow

python -m pip install --upgrade pip
python -m pip install --upgrade openpyxl
python -m pip install --upgrade lxml
python -m pip install --upgrade defusedxml
python -m pip install --upgrade pypdf
python -m pip install --upgrade pdf2image
python -m pip install --upgrade Pillow

Write-Host ""

Write-Host "[5/6] Configurar NODE_PATH en variables de entorno..." -ForegroundColor Yellow

$globalNodeModules = npm root -g 2>&1 | Out-String
$globalNodeModules = $globalNodeModules.Trim()

$currentNodePath = [Environment]::GetEnvironmentVariable("NODE_PATH", "User")

if ($currentNodePath -eq $globalNodeModules) {
    Write-Host "      NODE_PATH ya está configurado correctamente" -ForegroundColor Green
} else {
    [Environment]::SetEnvironmentVariable("NODE_PATH", $globalNodeModules, "User")
    Write-Host "      NODE_PATH configurado: $globalNodeModules" -ForegroundColor Green
    $env:NODE_PATH = $globalNodeModules
}
Write-Host ""

# Write-Host "[6/6] Actualizar Copilot CLI" -ForegroundColor Yellow
# winget install GitHub.Copilot


Write-Host ""

Set-Location $PSScriptRoot

Clear-Host
Write-Host "`n"
Write-Host "   ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓" -ForegroundColor Magenta
Write-Host "   ┃                                            ┃" -ForegroundColor Magenta
Write-Host "   ┃   ✨  ██████╗ ███╗   ██╗███████╗           ┃" -ForegroundColor Yellow
Write-Host "   ┃      ██╔═══██╗████╗  ██║██╔════╝           ┃" -ForegroundColor Yellow
Write-Host "   ┃      ██║   ██║██╔██╗ ██║█████╗             ┃" -ForegroundColor Yellow
Write-Host "   ┃      ██║   ██║██║╚██╗██║██╔══╝             ┃" -ForegroundColor Yellow
Write-Host "   ┃      ╚██████╔╝██║ ╚████║███████╗           ┃" -ForegroundColor Yellow
Write-Host "   ┃       ╚═════╝ ╚═╝  ╚═══╝╚══════╝           ┃" -ForegroundColor Yellow
Write-Host "   ┃                                            ┃" -ForegroundColor Magenta
Write-Host "   ┃    ██████╗██╗     ██╗ ██████╗██╗  ██╗      ┃" -ForegroundColor Cyan
Write-Host "   ┃   ██╔════╝██║     ██║██╔════╝██║ ██╔╝      ┃" -ForegroundColor Cyan
Write-Host "   ┃   ██║     ██║     ██║██║     █████╔╝       ┃" -ForegroundColor Cyan
Write-Host "   ┃   ██║     ██║     ██║██║     ██╔═██╗       ┃" -ForegroundColor Cyan
Write-Host "   ┃   ╚██████╗███████╗██║╚██████╗██║  ██╗      ┃" -ForegroundColor Cyan
Write-Host "   ┃    ╚═════╝╚══════╝╚═╝ ╚═════╝╚═╝  ╚═╝      ┃" -ForegroundColor Cyan
Write-Host "   ┃                                            ┃" -ForegroundColor Magenta
Write-Host "   ┃   ████████╗███████╗███████╗████████╗  ⚡   ┃" -ForegroundColor Green
Write-Host "   ┃   ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝       ┃" -ForegroundColor Green
Write-Host "   ┃      ██║   █████╗  ███████╗   ██║          ┃" -ForegroundColor Green
Write-Host "   ┃      ██║   ██╔══╝  ╚════██║   ██║          ┃" -ForegroundColor Green
Write-Host "   ┃      ██║   ███████╗███████║   ██║          ┃" -ForegroundColor Green
Write-Host "   ┃      ╚═╝   ╚══════╝╚══════╝   ╚═╝          ┃" -ForegroundColor Green
Write-Host "   ┃                                            ┃" -ForegroundColor Magenta
Write-Host "   ┃                                            ┃" -ForegroundColor Magenta
Write-Host "   ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛" -ForegroundColor Magenta
Write-Host "`n"


# Start copilot 
copilot --agent=one-click-test-plugin/OneClickTest --yolo --banner --disable-builtin-mcps

# Mantener la terminal abierta
Write-Host "`nPresiona Enter para cerrar..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
