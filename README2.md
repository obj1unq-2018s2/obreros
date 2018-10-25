# Obreros
Debemos armar un modelo de obrero de la construcción, que trabajan en diferentes tipos de obras.

## Modelo básico
Un obrero debe poder realizar distintos trabajos para la obra en la que está trabajando. Los trabajos que puede realizar van a depender del tipo de obrero. Un obrero debe saber si está trabajando o en descanso. Los obreros se registran en una obra para estar disponibles para el trabajo y solo trabajan para esa obra.

Hay distintos tipos de obreros en una obra: albañiles, plomeros, electricistas.

El avance de la obra se realiza por Jornal, y al final de cada jornada el obrero informa a la obra de su avance. 

## Etapa 1:

Para cada obra tenemos que poder configurar:

* su presupuesto, en pesos;
* los obreros que trabajan en ella;

Cada obra tiene 3 caracteristicas que muestran el nivel avance de la misma:

* seguridad;
* confort;
* estética;

Inicialmente mentes, estos niveles están en 1

Una vez configurado esto, la obra tiene que poder informar si está finalizada, esto es así cuando los niveles de _seguridad_, _confort_ y _estética_ son mayores a 100.

Para que una obra avance, tenemos que poder pedirle a cada obrero que trabaje una jornada en la obra que tiene asignada. Vamos a suponer que siempre que trabajan siempre afectan en la misma proporción a los 3 niveles de las obras:

Por trabajos de Albañileria los niveles aumentan en :
* seguridad: 10%;
* confort: 15%;
* estética: 5%;

Por trabajos de Plomeria los niveles aumentan en :
* seguridad: 5%;
* confort: 10%;
* estética: 5%;

Por trabajos de Electricidad los niveles aumentan en :
* seguridad: 20%;
* confort: 25%;
* estética: 10%;

## Requerimientos
* Obrero trabaja en una sola obra.
* La obra conoce quienes trabajan en ella y ejecuta una jornada, esto provoca que todos sus trabajadores trabajen.
* Cuando finaliza la jornada el obrero le informa a la obra que tipo de trabajo termino que se actulicen su niveles según corresponda.

## Etapa 2:
Incorporar errores. Agregar una mini explicación de cómo tirar error.

Agregarle al obrero un atributo que indica si está descansando. Si lo hacés trabajar cuando está descansando, falla. Si la obra dispara la jornada y tiene obreros descansando, tiene que fallar.
La obra no deja trabajar a un obrero que no está registrado.


## Etapa 3:

Trabajar sobre la obra también afecta al obrero: cuenta la jornada que no trabajó. Acá aparece superclase y template method.
La obra tiene un método para pagar lo adeudado, que le pregunta a cada obrero cuántas jornadas trabajó y cuánto cobra por jornada. La obra recuerda cuánto gastó y el obrero recuerda cuánto cobró.

## Etapa 4:
Se dividen los tipos de obra.

Cada obra decide cómo afecta el trabajo de un profesional.
Además, los edificios pagan un plus de X pesos.

## Bonus:

Soportar varias obras por obrero, hay que meter un diccionario.
Incorporar la UOCRA. Al agregar un obrero debe verificarse que esté afiliado, si eso no pasa lanzar error.
