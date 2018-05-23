$cwd = Split-Path -Parent $MyInvocation.MyCommand.Definition
$snippetPath = Join-Path $cwd "Visual C#\My Code Snippets"
$name = "Gert's snippets"

Write-Host "Adding snippet path: $cwd ..."
New-ItemProperty -Path HKCU:\Software\Microsoft\VisualStudio\12.0_Config\Languages\CodeExpansions\CSharp\Paths -Name $name -PropertyType String -Value $snippetPath -Force
