@echo off
echo Downloading Blue Iris installer...
powershell -Command "Invoke-WebRequest -Uri 'https://blueirissoftware.com/blueiris.exe' -OutFile 'blueiris.exe'"

if %ERRORLEVEL% neq 0 (
    echo Failed to download the installer.
    exit /b 1
)

echo Installing Blue Iris...
start /wait blueiris.exe /exenoui

if %ERRORLEVEL% neq 0 (
    echo Installation failed.
    exit /b 1
)

echo Installation completed successfully.
exit /b 0



@REM BlueIris Command Line Options

@REM /? display this dialog
@REM /help - displays this dialog
@REM /extract <path> - extracts all files to <path>
@REM /exenoui - launches the EXE setup without UI
@REM /exebasicui - launches the exe setup with basic UI
@REM /exelang <lang_id> - launches the EXE setup using the specificed language
@REM /listlangs - lists languages supported by the setup
@REM /exelog <path_to_log_file> - creates a log file at the specified path
@REM /proxyusername <username> - username used by the proxy
@REM /proxypassword <password> - password used by the proxy
@REM /exenoupdates - does not check for a new version
@REM /aespassword - sets the password needed to install an AES encrypted package
@REM /prereqs <prereq_id_list> - specifies which prerequisites to be installed
@REM /noprereqs - skips prerequisite installation
@REM /newinst <instance_id> - install new instance
@REM /upgrdinst <instance_product_code> - upgrade an installed instance
@REM /selinst <instance_product_code> - maintain an installed instance
@REM /instname <new_instance_name> - change the instance Product Name when installing it
@REM /uninstallinst <instance_product_name> uninstall an installed instance
@REM <msiOptions> - options for msiexec.exe on running the MSI package


