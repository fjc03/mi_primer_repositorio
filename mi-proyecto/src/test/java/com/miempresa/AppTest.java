package com.miempresa;


import static org.junit.Assert.*;
import org.junit.Test;
import static org.junit.Assert.*;



 
public class AppTest 
{
    //prueba unitaria de la clase app que suma dos numeros, usa junit para automatizar la verificacion

    @Test
    public void test_sumar()
    {
        App objeto= new App();
        assertEquals(5, objeto.sumar(2,3));
    }


}
