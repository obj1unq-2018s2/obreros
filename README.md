# Obreros
Debemos armar un modelo de obrero de la construcción

## Modelo básico
Para los obreros de una obra tenemos que tener en cuenta los siguientes indicadores:

_ el _nombre_, _apellido_, _dni_
- el _jornalAcumulado_, expresado en pesos, es el acumulado pendiente de cobrar en el próximo cierre quincenal, cada obrero debe saber cuanto tiene pendiente de cobrar, para sí validar al momento de recibir el pago.

Los obreros responden a los mensajes:

`trabajar()`, `descanso(int minutos)`

Un obrero debe saber si esta trabajando o en descanso.

Hay distintos tipo de obreros en una obra:

Los _albañiles_ , que se encargan de todos los trabajos comunes de albañileria, generalmente trabajan fijos en un obra hasta que finaliza y cobran por jornal trabajado, el precio por jornal es definido por el sindicado.
Los especialistas, entre los que se encuentran _plomeros_, _electricistas_, _gasistas_ sobran por horas trabajadas, el precio por hora de cada especialidad está definido tambien por el sindicato. Por último tenemos al _directorDeObra_, que es el quien gestiona toda la obra.

Los sindicatos tienen una nomina de empleados registrados. Tambien saben el precio por jornal de los albaniles y el precio por ahora de cada especialidad.

Las obras tienen un _director_de_obra_ y conjunto de obreros que trabajan por jornal u hora, dependiendo del tipo.
Las obras permiten a los empleados registrar los días u horas trabajadas según corresponda, esto le permite a la obra tener su propio registro de que tiene que pagar a cada empleado en el próximo cierre de quincena.


## Roles dentro de Albañileria
Dentro de la albañileria existen varios roles:

El _peon_ es el rol inicial, hace todo tipo de trabajos, siempre responde a las ordenes de un _oficial_albañil_, que ya cuenta con mas esperiencia, colabora con los otros tipos de obreros y recibe ordener del _capataz_, que es el encargado de coordinar todo el equipo de albañiles.




Obreros hacen cosas en una obra, que tiene un efecto sobre la obra: los albañiles hacen una cosa, los plomeros otra, etc.. Hay dos tipos de obra. P.ej. si el efecto de los albañiles es levantar pared, para una casa es una cosa y para un edificio es otra distinta.

Este ejercicio puede tener algo de errores, p.ej. si le pido hacer algo a un albañil que está en reposo tira error.

## Verificación de la quincena
Al momento de pagar al empleado, el empleado verifica si lo recibido corresponde con lo que se tenia registro, en caso de no coinciden, debe indicarlo con un error.


## Almuerzo


## Pago de la Quincena
Los pagos en la construcción historicamente se hacen cada quince días. Para los empleados 

## Rotación de personal
Si un tipo de obra se va acordando de qué obreros trabajaron, se puede hacer un método trabajo(obrero), para que practiquen el contains.

## UOCRA Presente
Cada el sindicato visita la obra para verificar que todos los obreros esten en blanco y todos esten usando los elementos de seguridad correspondientes.

Para evitar suspensiones la obra realiza una verificacion antes de iniciar la jornada de trabajo, que todos los obreros esten listo con los elementos de seguridad necesarios

Cada obra debe poder _informar_ la nómina de obreros trabajando en ella indicando sus datos personales y su número de afiliado a UOCRA.

# obreros
