# Obreros
Debemos armar un modelo de obrero de la construcción, que trabajan en diferentes tipos de obras.

## Modelo básico
Un obrero debe poder realizar distintos trabajos para la obra en la que está trabajando. Los trabajos que puede realizar van a depender del tipo de obrero. Un obrero debe saber si está trabajando o en descanso. Los obreros se registran en una obra para estar disponibles para el trabajo y solo trabajan para esa obra.

Hay distintos tipos de obreros en una obra: albañiles, plomeros, electricistas.

El avance de la obra se realiza por Jornal, y al final de cada jornada el obrero informa a la obra de su avance. 

## Etapa 1:

Para cada obra tenemos que poder configurar:

* presupuesto, en pesos
* los obreros que trabajan en ella

Cada obra tiene 3 caracteristicas que muestran el nivel avance de la misma:

* seguridad
* confort
* estética

Inicialmente estos niveles están en 10

Una vez configurado esto, la obra tiene que poder informar si está finalizada, esto es así cuando los niveles de _seguridad_, _confort_ y _estética_ son mayores a 100.

Para que una obra avance, tenemos que poder pedirle a cada obrero que trabaje una jornada en la obra que tiene asignada. Vamos a suponer que siempre que trabajan siempre afectan en la misma proporción a los 3 niveles de las obras:

Por `trabajoDeAlbañileria()` los niveles aumentan en :
* seguridad: 10 puntos
* confort: 15 puntos
* estética: 5 puntos

Por `trabajoDePlomeria()` los niveles aumentan en :
* seguridad: 5 puntos
* confort: 10 puntos
* estética: 5 puntos

Por `trabajoDeElectricidad()` los niveles aumentan en :
* seguridad: 20 puntos
* confort: 25 puntos
* estética: 10 puntos

## Requerimientos
* Obrero trabaja en una sola obra.
* La obra conoce quienes trabajan en ella y ejecuta una jornada, esto provoca que todos sus trabajadores trabajen.
* Cuando finaliza la jornada el obrero le informa a la obra que tipo de trabajo termino que se actualicen su niveles según corresponda.

## Etapa 2:
Aunque algunos no lo entiendan, los obreros tiene derecho a descandar. Si un obrero está descansando y la obra le piude que trabaje, debe arrojarle un error.
Si la obra dispara la jornada y tiene obreros descansando, tiene que fallar.
Por otro lado, los obreros pueden vincularse / desvincularse de una obra.


https://www.wollok.org/documentacion/conceptos/#mecanismo-de-excepciones

## Etapa 3:
Mal que le pese a los empleadores, el trabajor debe recibir una compensación por el trabajo realizado, en la construcción se suele pagar cada 15 días, quincena, los jornales adeudados para cada obrero.

Cuando la obra va a pagar la quincena a sus obreros, le consulta a cada obrero cuantos jornales le adeuda y cuanto cobra por Jornal.

Para lograr esto, el obrero tiene que recordar cuantos jornales tiene pendientes de cobrar.

El obrero tiene que recordar el acumulado de sueldos cobrados y la obra tiene que recordar el acumulado de sueldos pagados.

## Etapa 4:
Tenemos distintos tipos de obras que agregan caracteristicas propias:

Por un lado tenemos las `casas` que agregan como atributos:

* _metrosCubiertos_ a construir
* Si tiene _pileta_

y al momento de recibir un trabajos de :

* `trabajoDeAlbañileria()`  se aumenta 5 puntos extra el nivel de _estetica_ si la casa tiene mas de 200 metros de _metrosCubiertos_
* `trabajoDePlomeria()` se aumenta 5 puntos extra el nivel de _confort_ si la casa tiene _pileta_

Por otro lado, si lo que construimos es un `Eificio`, se agregan como atributos:

* los _pisos_ a construir
* los _departamentosPorPiso_ a construir
* Si tiene _sum_

y al momento de recibir un trabajos de :

* `trabajoDeAlbañileria()`  se aumenta 10 puntos extra el nivel de _estetica_ si el `Edificio` tiene mas de 10 _pisos_
* `trabajoDeElectricidad()` se aumenta 15 puntos extra el nivel de _seguridad_ si el `Edificio`  tiene mas de 8 _departamentosPorPiso_
* `trabajoDePlomeria()` se aumenta 5 puntos extra el nivel de _confort_ si el `Edificio`  tiene _sum_

Por otro lado, en la construcción de un `Edificio` existe un bono extra por presentismo, al momento de pagar la quincena. El obrero califica al bono si trabajó al menos 9 días dentro de esa quincena y el _presupuesto_ de la obra es mayor a $ 1000000.
El valor de bono extra se especifica en la definición de la obra.

## Bonus 1:
UOCRA es el sindicato de obreros de la construcción y mantiene un registro de los obreros afiliados.
Agregar los cambios necesarios para que la obra no deje registrar un obrero que no sea afiliado de UOCRA. Si un obrero no afilido pretende registrarse a la obra, la obra debe arrojar un error.

## Bonus 2
Introducir los cambios necesarios para que un obrero pueda registrarse en varias obra a la vez.
Tener en cuenta que ahora debera llevar cuenta de las jornadas pendientes de cobrar de cada obra.

Ver https://www.wollok.org/documentacion/conceptos/#diccionarios
