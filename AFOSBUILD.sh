rm -rf /opt/ANDRAX/apple_bleee

python3 -m venv /opt/ANDRAX/apple_bleee

source /opt/ANDRAX/apple_bleee/bin/activate

/opt/ANDRAX/apple_bleee/bin/pip3 install wheel

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Pip install wheel... PASS!"
else
  # houston we have a problem
  exit 1
fi

/opt/ANDRAX/apple_bleee/bin/pip3 install git+https://github.com/pybluez/pybluez.git#egg=pybluez

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Pip install PyBLUEZ... PASS!"
else
  # houston we have a problem
  exit 1
fi

/opt/ANDRAX/apple_bleee/bin/pip3 install -r requirements.txt

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Install requirements... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf $(pwd) /opt/ANDRAX/apple_bleee/package

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf andraxbin/* /opt/ANDRAX/bin
