@echo off

echo "Compiling atcrawl..."
echo.

call conda activate atcrawl
echo.
cd %CONDA_PREFIX%\Lib\site-packages\atcrawl
echo hiddenimports = ['pandas._libs.tslibs.base'] > %CONDA_PREFIX%\Lib\site-packages\PyInstaller\hooks\hook-pandas.py
call pyinstaller main.py

echo.
echo "Done!"
echo.

pause