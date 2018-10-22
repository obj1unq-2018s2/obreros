# Obreros
Debemos armar un modelo de obrero de la construcción

## Modelo básico
Un obrero debe poder realizar distintos trabajos para la obra en que está trabajando.
Los trabajos que puede realizar van a depender de que tipo de obreros es.
Cada trabajo realizado incrementa el avance de la obra, cuanto lo incrementa depende del tipo de trabajo y  de la obra.

Un obrero de saber si esta trabajando o en descanso.

Los obreros siempre trabajan en una obra por vez hasta finalizarla.

Hay distintos tipo de obreros en una obra:

Los _albañiles_ , que se encargan de todos los trabajos comunes de albañileria. Las tareas que pueden realizar son:

`levantarPared()`,
`hacerPiso()`,
`hacerLosa()`

Los especialistas, entre los que se encuentran _plomeros_, _electricistas_, _gasistas_, _pintor_ realizar tareas dependendiendo de su especialidad:

_plomeros_: 
`hacerInstalacionDeAgua()`

_electricistas_:
`hacerInstalacionElectrica()`

_gasistas_: 
`hacerInstalacionDeGas()`

_pintor_:
`pintar()`


Por último tenemos al _directorDeObra_, que es el quien gestiona toda la obra.

_directorDeObra_:
`contratarPersonal` : contratar un numero albaniles acorde al tamaño de la obra, el calculo que tiene que hacer es 1 albanil por cada 2000 _unidades_de_trabajo necesarias para completar la obra, obviamente siempre redondear hacia arriba la cantidad de albaniles.
Además contrata un especialista por tipo.

`pedirHabilitacion`: pide la habilitación de la obra
`iniciarJornal` : el jornal se divide en:
  - 40% de los albañiles hacen una pared cada 1
  - el 30% de los albañiles hace un Piso
  - el 30% de los albañiles hace un Techo
  - cada uno de los especialistas realiza tu tarea particular
  
  Al principio y al inicio de la jornada, se calcula si se completo la obra (verificando que se llegó a completar el esfuerzo necesario).


## Tipos de obras
Las obras tienen un _director_de_obra_ y conjunto de obreros que trabajan por jornal. Cada obrero es exclusivo de esa obra hasta su finalización.
Las obras no se pueden iniciar si no fueron habilitadas municipalmente.

Cada cada obra se necesita un _esfuerzoLaboral_, medido en _unidades_de_trabajo_,  determinado para completarlo, determinado en base al tamaño de la misma.
Una obra nos tiene que poder informar el porcentaje de avance.

Las acciones que recibe una obra de un obrero son las siguientes:

`paredTerminada()`
`pisoTerminado()`
`techoTerminado()`
`habitacionPintada()`
`instalacionDeGasTerminada()`
`instalacionElectricaTerminada()`
`instalacionAguaTerminada()`

### Tenemos dos tipos de obras:
_casas_ : Las casas tiene 1 techo y un piso y debe poder definirse la cantidad de habitaciones.
La cantidad de _unidades_de_trabajo_ necesarias para completar una casa se determina con la siguiente formula:

`esfuerzoNecesario = cantidadDeAmbientes * 1000 `

Las tareas realizadas aportar la siguiente cantidad de _unidades_de_trabajo:

`paredTerminada()` = 50 unidades
`pisoTerminado()`  = 50 unidades
`techoTerminado()`  = 50 unidades
`habitacionPintada()` =  100 unidades
`instalacionDeGasTerminada()`  = 1000 unidades
`instalacionElectricaTerminada()` =  2300 unidades
`instalacionAguaTerminada()` = 1200 unidades

_edificios_ : 
tienen 2 pisos de altura o más, ademas se tiene q poder definir cuantos pisos, cuantos departamentos por piso y cuantas habitaciones por departamento.

`esfuerzoNecesario = cantidadDePisos * cantidadDeDepartamentosPorPiso * cantidadDeAmbientesPorDepartamento * 500) +  `

Las tareas realizadas aportar la siguiente cantidad de _unidades_de_trabajo:

`paredTerminada()` = 20 unidades
`pisoTerminado()`  = 25 unidades
`techoTerminado()`  = 20 unidades
`habitacionPintada()` =  80 unidades
`instalacionDeGasTerminada()`  = 500 unidades
`instalacionElectricaTerminada()` =  1700 unidades
`instalacionAguaTerminada()` = 800 unidades


## Liquidacion de sueldos y Sindicatos
Las obras liquidan el sueldo quincenalmente a todos los obreros consultado al sindicato la información necesario para esa liquidación.

El precio del jornal esta definido por tipo de obrero, esa información la tiene el sindicado de la construcción UOCRA.

El _sindicato_ tienen una nomina de empleados registrados. Tambien saben el precio por jornal de los albaniles, el precio por ahora de cada especialidad.

## Rotación de personal
Si un tipo de obra se va acordando de qué obreros trabajaron, se puede hacer un método trabajo(obrero), para que practiquen el contains.

## UOCRA Presente
Cada el sindicato visita la obra para verificar que todos los obreros esten en blanco y todos esten usando los elementos de seguridad correspondientes.

Para garantizar estar en regla, al momento de contratar, el _directorDeObra_ tiene que verificar que el obrero exista en los registros de UOCRA.

Para evitar suspensiones la obra realiza una verificacion antes de iniciar la jornada de trabajo, que todos los obreros esten listo con los elementos de seguridad necesarios, la obra le pide al _director_de_obra_ que verifique que todos los empleados estén utilizando los elementos de seguridad.

Cada obra debe poder _informar_ la nómina de obreros trabajando en ella su número de afiliado a UOCRA.



