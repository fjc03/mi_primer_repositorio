#!/bin/bash


echo "Activando el entorno virtual"
if [!"-d venv "]; then
    python3 -m venv venv
fi

source venv/bin/activate

echo "Instalando las dependencias"
pip install --upgrade pip
pip install -r requirements.txt

echo "Ejecutando las pruebas con pytest"
pytest test/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "Pruebas finalizadas resultados en reports"