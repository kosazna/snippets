@echo off

echo "Compiling atakl..."
echo.

call conda activate atakl
echo.
cd %CONDA_PREFIX%\Lib\site-packages\atakl
echo hiddenimports = ['pandas._libs.tslibs.base'] > %CONDA_PREFIX%\Lib\site-packages\PyInstaller\hooks\hook-pandas.py
call pyinstaller --onefile --windowed main.py

echo.
echo "Done!"
echo.

pause