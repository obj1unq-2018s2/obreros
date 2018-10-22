# Obreros
Debemos armar un modelo de obrero de la construcción

## Modelo básico
Un obrero debe poder realizar distintos trabajos para la obra en que está trabajando.
Los trabajos que puede realizar van a depender de que tipo de obreros es.
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


Por último tenemos al _directorDeObra_, que es el quien gestiona toda la obra, cobra un sueldo fijo por quincena, su también esta definido por el sindicato.

_directorDeObra_:
`iniciaObra`
`finalizarObra`
`pedirHabilitacion`


# Tipos de obras
Las obras tienen un _director_de_obra_ y conjunto de obreros que trabajan por jornal. Cada obrero es exclusivo de esa obra hasta su finalización.
Las obras no se pueden iniciar si no fueron habilitadas municipalmente, y no se puede finalizar si no se completaron todas las tareas necesarias.
Mas allá del tipo de obra, cada obra tiene una cantidad de paredes, pisos, techos, baños, instalaciones de agua, instalaciones de gas instalaciones electricas a terminar y otra cantidad de ambientes a pintar.


Las tareas efectuadas por las obreros reciben

Tenemos dos tipos de obras:
_casas_ : las primeras pueden ser contrucciones de hasta 2 pisos, deben poder definirse la cantidad de habitaciones, baños y lugares comunes.

_edificios_ : tienen 3 pisos o más, ademas se tiene q poder definir cuantos departamentos por piso  



## Roles dentro de Albañileria
Dentro de la albañileria existen varios roles:

El _peon_ es el rol inicial, hace todo tipo de trabajos, siempre responde a las ordenes de un _oficial_albañil_, que ya cuenta con mas esperiencia, colabora con los otros tipos de obreros y recibe ordener del _capataz_, que es el encargado de coordinar todo el equipo de albañiles. El _capataz_ responde al director de obra.
Parte del trabajo de los oficiales y del capataz es darle trabajo a sub subordinados.





# Liquidacion de sueldos y Sindicatos
Las obras liquidan el sueldo quincenalmente a todos los empleados (albañiles y especialistas) consultado al sindicato la información necesario para esa liquidación.

Los _albañiles_ , que se encargan de todos los trabajos comunes de albañileria,  trabajan fijos en un obra hasta que finaliza y cobran por jornal trabajado, el precio por jornal es definido por el sindicado. Los obreros deben guardar un registro de los días trabajados en la última quincena.
Los especialistas, entre los que se encuentran _plomeros_, _electricistas_, _gasistas_ sobran por horas trabajadas, el precio por hora de cada especialidad está definido tambien por el sindicato. Los especialistas deben guardar un registro de las horas trabajadas en la ultima quincea.
Por último tenemos al _directorDeObra_, que es el quien gestiona toda la obra, cobra un sueldo fijo por quincena, su también esta definido por el sindicato.

Los _sindicatos_ tienen una nomina de empleados registrados. Tambien saben el precio por jornal de los albaniles, el precio por ahora de cada especialidad.



Obreros hacen cosas en una obra, que tiene un efecto sobre la obra: los albañiles hacen una cosa, los plomeros otra, etc.. Hay dos tipos de obra. P.ej. si el efecto de los albañiles es levantar pared, para una casa es una cosa y para un edificio es otra distinta.

Este ejercicio puede tener algo de errores, p.ej. si le pido hacer algo a un albañil que está en reposo tira error.

## Verificación de la quincena
Al momento de pagar al empleado, el empleado verifica si lo recibido corresponde con lo que se tenia registro, en caso de no coinciden, debe indicarlo con un error.

## Rotación de personal
Si un tipo de obra se va acordando de qué obreros trabajaron, se puede hacer un método trabajo(obrero), para que practiquen el contains.

## UOCRA Presente
Cada el sindicato visita la obra para verificar que todos los obreros esten en blanco y todos esten usando los elementos de seguridad correspondientes.

Para evitar suspensiones la obra realiza una verificacion antes de iniciar la jornada de trabajo, que todos los obreros esten listo con los elementos de seguridad necesarios, la obra le pide al _director_de_obra_ que verifique que todos los empleados estén utilizando los elementos de seguridad.

Cada obra debe poder _informar_ la nómina de obreros trabajando en ella su número de afiliado a UOCRA.
