@echo off

echo "Creating conda environment (atakl)..."
echo.
call conda create -n atakl python=3.7
echo.
call conda activate atakl
echo.
cd %CONDA_PREFIX%\Scripts
call pip install pandas==1.1.5 numpy==1.19.2 openpyxl==3.0.5 xlrd==1.2.0 pyqt5 pyinstaller pypiwin32
echo.
cd %CONDA_PREFIX%\Lib\site-packages
git clone git@github.com:kosazna/atakl.git

echo.
echo "Done!"
echo.

pause