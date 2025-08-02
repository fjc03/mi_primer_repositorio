import pytest

def multiplicar (a,b):
    """Funcion que multiplica dos numeros"""
    return a*b

def test_multiplicar():
    assert multiplicar(2,4) == 8
    assert multiplicar(-3,8) == -24
    assert multiplicar(0,100) == 0
    
