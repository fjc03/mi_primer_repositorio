import pytest

def sum(a,b):
    """Funcion que suma dos numeros"""
    return a+b

def test_suma():
    assert sum(1,3) == 4
    assert sum(-1,1) == 0

def test_suma_error():
    assert sum(1,3) == 5
