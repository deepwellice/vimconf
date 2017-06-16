REM @echo off

set bundle_path=%USERPROFILE%\.vim\bundle
if not exist %bundle_path% (
    mkdir %bundle_path%
    git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%\.vim\bundle\vundle
)

powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/deepwellice/vimconf/master/vimrc -OutFile %USERPROFILE%\_vimrc"

