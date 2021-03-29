@echo off

echo "Updating atcrawl on conda environment"
echo.

call conda activate atcrawl
cd %CONDA_PREFIX%\Lib\site-packages\atcrawl
git pull git@github.com:kosazna/atcrawl.git

echo.
echo "Done!"
echo.

pause