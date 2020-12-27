# Virtual Environment
# Jaroslav Langer
# 2020, Dec. 27

# Go home
cd

# Create virtual environment
python3 -m venv langerenv

# Install packages outside the environment
pip3 install numpy
pip3 install matplotlib
pip3 install html5lib

# Start the environment
source /path/.nameoftheenv/bin/activate

# Install packages to the environment
pip3 install notebook
pip3 install requests
pip3 install pandas
pip3 install Cython
pip3 install -U scikit-learn
pip3 install seaborn
pip3 install lxml
pip3 install BeautifulSoup4
pip3 install xlrd
pip3 install pywebcopy
pip3 install pillow

pip3 install plotly
pip3 install -U kaleido

# Deactivate virtual environment
deactivate

