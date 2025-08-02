#!/bin/bash


echo "Iniciando ejecución de pruebas en jenkins"
if [ ! -d "venv" ]; then
    echo "Entorno virtual no encontrado, creandolo..."
    python3 -m venv venv
    ls -l
fi

#Activar el entorno viertual correctamente
#if [ -f "venv/bin/activate" ]; then 
    source venv/bin/activate
#elif [-f "venv/Scripts/activate"]; then #Para windows
 #   source "venv/Scripts/activate"
#else
 #   echo "Error no se pudo activar el entorno virtual"
 #   exit 1
#fi

#Verificar si pip esta instalado correctamente
echo "Instalando las dependencias"
pip install --upgrade pip --break-system-packages
pip install -r requirements.txt --break-system-packages
#Para mac
pip3 freeze > requirements.txt
pip3 install -r requirements.txt

pip install pytest
pip install pytest-html

#Crear la carpeta donde se van a guardar los reportes
pwd
mkdir -p reports

echo "Ejecutando las pruebas con pytest"
pytest test/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "Pruebas finalizadas resultados en reports"