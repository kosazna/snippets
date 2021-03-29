@echo off

echo "Creating conda environment (dsc)..."
echo.

call conda create -n dsc
echo.
call conda activate dsc
echo.
call conda install pandas numpy matplotlib seaborn openpyxl xlrd jupyterlab notebook sqlalchemy mysql-connector-python

echo.
echo "Done!"
echo.

pause