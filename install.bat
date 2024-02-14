@echo off
set "VSCodeExtensionsDir=%USERPROFILE%\.vscode\extensions"
set "BatchDir=%~dp0"
set "ThemeDirName=pras.pras-spectrum-theme-v0.0.2"
set "ThemeDir=%ThemeDirName%"

rem Remove the existing theme directory if it exists
rd /S /Q "%VSCodeExtensionsDir%\%ThemeDirName%"

rem Create a new theme directory
mkdir "%VSCodeExtensionsDir%\%ThemeDirName%"

rem Copy all folders and their contents from the root directory of the batch file
xcopy /E /Y "%BatchDir%*" "%VSCodeExtensionsDir%\%ThemeDirName%"

echo -----------------------------------
echo Theme Installed Successfully!
echo -----------------------------------


rem Wait for 2 seconds
timeout /t 2 >nul

rem Exit the terminal
exit