@echo off

echo "Updating atakl on conda environment"
echo.

call conda activate atakl
cd %CONDA_PREFIX%\Lib\site-packages\atakl
git pull git@github.com:kosazna/atakl.git

echo.
echo "Done!"
echo.

pause