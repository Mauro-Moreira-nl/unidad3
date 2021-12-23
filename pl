-- Veamos nuestro primer bloque anonimo
set SERVEROUTPUT ON; 
-- habilitar que los mensajes salgan por pantalla
BEGIN 
dbms_output.put_line('Hola Mundo'); 
dbms_output.new_line; 
dbms_output.put('Hola Mundo'); 
dbms_output.put_line('Hola Mundo'); 
END; 

-- Veamos un segundo procedimiento
set SERVEROUTPUT ON; 
DECLARE 
nombre varchar(20); 
BEGIN 
nombre := 'ABCDE'; 
dbms_output.put_line('Hola Mundo'); 
dbms_output.new_line; 
dbms_output.put('Hola Mundo'); 
dbms_output.put_line('Hola Mundo'); 
dbms_output.put_line(nombre); 
END; 

-- Aprendamos a leer en el proximo bloque
set SERVEROUTPUT ON; 
accept nombre char prompt 'Ingresa tu nombre' 
DECLARE 
nombre varchar(30); 
BEGIN 
nombre := '&nombre'; 
dbms_output.put_line('Hola Mundo'); 
dbms_output.new_line; 
dbms_output.put('Hola Mundo'); 
dbms_output.put_line('Hola Mundo'); 
dbms_output.put_line(nombre); 
dbms_output.put_line('EL VALOR DE LA VARIABLE ES:' || nombre); 
END; 

-- Otro procedimiento
Accept entrada char prompt 'Ingresa tu nombre' 
DECLARE 
elnombre varchar(20) := '&entrada'; 
BEGIN 
FOR i IN 1..LENGTH(elnombre) LOOP 
dbms_output.put_line(SUBSTR(elnombre,i,3)); 
END LOOP; 
END;

-- Veamos un ejercicio un poco mas amplio
ACCEPT entrada char prompt 'Ingresa un texto' 
SET SERVEROUTPUT ON; 

DECLARE 
unavariable varchar(30); 
lafecha date := sysdate; 
eltexto varchar(20); 
i number; 
BEGIN 
unavariable := '123'; 
eltexto := '&entrada'; 
--Timestamp = segundos desde 01/01/1970 
dbms_output.put_line('tu nombre es:' || unavariable); 
dbms_output.put_line('La Fecha es:' || lafecha); 
dbms_output.put_line('El texto ingresado es:' || eltexto); 
dbms_output.put_line('El día de hoy de la semana es:' || TO_CHAR(lafecha,'J')); 
dbms_output.put_line('El día de hoy de la semana es:' || TO_CHAR(lafecha,'D')); 
dbms_output.put_line('El día de hoy de la semana es:' || TO_CHAR(lafecha,'DAY')); 
dbms_output.put_line('El día de hoy de la semana es:' || TO_CHAR(lafecha,'DY')); 
dbms_output.put_line('El día de hoy de la semana es:' || TO_CHAR(lafecha,'MONTH')); 
dbms_output.put_line('El día de hoy de la semana es:' || TO_CHAR(lafecha,'MON')); 
dbms_output.put_line('El día de hoy de la semana es:' || TO_CHAR(lafecha,'DD')); 
dbms_output.put_line('El día de hoy de la semana es:' || TO_CHAR(lafecha,'DD')); 
dbms_output.put_line('El día de hoy de la semana es:' || TO_CHAR(lafecha,'RM')); 
i := 0; 
while (i < 10) LOOP 
dbms_output.put_line('Iterando en el while'); 
i := i+1; 
END LOOP; 
if (eltexto = 'hola') THEN 
dbms_output.put_line('Hola Buen Día'); 
END IF; 
END; 

-- Siguiente ejercicio
ACTIVIDAD 1 

-- Este programa, pide los datos básicos de una persona 
--Objetivo, leer y escribir desde teclado y mostrar en pantalla  
-- Demostrar los tipos de dato. 
ACCEPT nombreteclado char prompt 'Ingrese su nombre'; 
ACCEPT fechateclado date prompt 'Ingrese su Fecha de Nacimiento'; 
ACCEPT edadteclado number prompt 'Ingrese su edad'; 
DECLARE 
    nombre varchar(50); 
    edad number; 
    fechanacimiento date; 
BEGIN 
    nombre := '&nombreteclado'; 
    edad := &edadteclado; 
    fechanacimiento := '&fechateclado'; 
    dbms_output.put_line('Su nombre es: ' || nombre); 
    dbms_output.put_line('Su edad es: ' || edad); 
    dbms_output.put_line('Usted nació el : ' || fechanacimiento); 
END; 

--ACTIVIDAD 2 
-- Este programa, pide los datos básicos de una persona 
--Objetivo, leer y escribir desde teclado y mostrar en pantalla  
-- Demostrar los tipos de dato. 
-- Validar si la persona es mayor de edad.  
ACCEPT nombreteclado char prompt 'Ingrese su nombre'; 
ACCEPT fechateclado date prompt 'Ingrese su Fecha de Nacimiento'; 
ACCEPT edadteclado number prompt 'Ingrese su edad'; 
DECLARE 
    nombre varchar(50); 
    edad number; 
    fechanacimiento date; 
BEGIN 
    nombre := '&nombreteclado'; 
    edad := &edadteclado; 
    fechanacimiento := '&fechateclado'; 
    if (edad >= 18) THEN 
        dbms_output.put_line('Usted es mayor de edad'); 
    else 
        dbms_output.put_line('Usted es menor de edad'); 
    END IF; 
    dbms_output.put_line('Su nombre es: ' || nombre); 
    dbms_output.put_line('Su edad es: ' || edad); 
    dbms_output.put_line('Usted nació el : ' || fechanacimiento); 
END; 

-- Cree un programa que realice las operaciones basicas imprimiendo
-- cada resultado. Los numeros deben ser leidos desde el teclado.
SET SERVEROUTPUT ON;
ACCEPT numero1 number prompt 'Ingrese primer numero';
ACCEPT numero2 number prompt 'Ingrese segundo numero';
DECLARE 
        num1, num2 number; 
begin
num1 := &numero1; 
num2 := &numero2;
--dbms_output.put_line('Suma: ' || num1); 
end;
