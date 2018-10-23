# Obreros
Debemos armar un modelo de obrero de la construcción

## Modelo básico
Un obrero debe poder realizar distintos trabajos para la obra en que está trabajando.
Los trabajos que puede realizar van a depender del tipo de obreros.
Un obrero debe saber si esta trabajando o en descanso.
Los obreros se registran en una obra para trabajar en un obra.

Hay distintos tipo de obreros en una obra: _albañiles_, _plomeros_, _electricistas_ y _gasistas_.

El avance de la obra se realiza por Jornal, durante un jornal se estima que un obrero según su tipo puede consumir:
 _albañil_ : 100 ladrillos
 _gasista_ : 2 metros de caños de gas
 _plomero_ : 10 metros de caños de agua
 _electricista_ : 3 metros de cable
 
 Antes de comenzar la jornada el obrero debe verificar si tiene material para trabajar en la obra, sino hay disponible, no le corresponde trabajar.
 
 Al final de cada jornada el obrero informa a la obra de su avance.
 Un obrero debe guardar registro de cada jornada trabajada y no cobrada.


# Tipos de obras
Las obras conjunto de obreros que se registran para trabajar y trabajar por jornal.
Las obras tiene una cantidad de metros de superficia a construir.
Las obras no se pueden iniciar si no fueron habilitadas municipalmente, y no se puede finalizar si no se completaron todas las tareas necesarias.
Mas allá del tipo de obra, cada obra al inicio define un presupuesto en pesos y una cantidad de materiales a consumir: _ladrillos_, _cables_ (en metros), _cañosDeAgua_ (en metros), _cañosDeGas_ (en metros).
Cada trabajar informa a la obra de su trabajo realizado y está actualiza su avance.
La obra está finalizada cuando se terminan de utilizar todos los materiales y tiene que poder informar si está finalizada.

Se calcula que por m2 de superficie a construir se necesitan:

- 500 ladrillos, 5 metros de caños de agua, 2 metros de caños de gas y 8 metros de cables.

El avance de la obra se realiza por Jornal, durante un jornal se estima que un obrero según su tipo puede consumir:
 _abañil_ : 100 ladrillos
 _gasista_ : 2 metros de caños de gas
 _plomero_ : 10 metros de caños de agua
 _electricista_ : 3 metros de cable
 
Al inicio de una jornal, verifica si faltan materiales por consumir y llamas a los obreros registrados para que trabajen la jornada de trabajo. Cuando el obrero finaliza su jornada, debe avisarle a la obra del avance.

Tenemos dos tipos de obras:
_casas_ : las primeras pueden ser contrucciones de hasta 3 pisos, deben poder definirse la cantidad de habitaciones, baños y lugares comunes.
Si la casa tiene mas de una planta, debe sumar un 20% de cada material por planta.
Si tiene cochera, sumar otro 10% a cada material.

_edificios_ : tienen 4 pisos o más, ademas se tiene q poder definir cuantos departamentos por piso.
Los edificios además tiene que indicar la cantidad de ascendores, por ascensor se calcula 3000 metros de _cable_.
Un  edificio puede tener cochera subterranea de varios niveles, por cada nivel se agrega:

- 5000 ladrillos, 100 metros de caños de agua y 200 metros de cables.


# Liquidacion de sueldos y Sindicatos
Las obras liquidan el sueldo quincenalmente a todos los obreros, consultando a cada obreros cuando se le debe liquidar.

Los obreros saben cuantos jornales tienen pendientes de cobrar. El precio por jornal está definido por el sindicado (UOCRA). Los obreros deben guardar un registro de los días trabajados en la última quincena.
Además deben guardar un registro de las obras en las que trabajó

Los _sindicatos_ tienen una nomina de empleados registrados. Tambien saben el precio por jornal de los albaniles, el precio por ahora de cada especialidad:

_albañil_ : 300
_plomero_ : 800
_electricista_ : 1000
_gasista_ : 1300

## UOCRA Presente
Cada el sindicato visita la obra para verificar que todos los obreros esten en blanco y todos esten usando los elementos de seguridad correspondientes.

Para evitar suspensiones la obra toma algunas medidas:

- cuando un obrero se registra para trabajar en una obra, se verifica con el sindicato que el obrero en cuestion esté en sus registros.

- antes del inicio de la jornada laboral, se verifica que cada obrero esté utilizando los elementos de seguridad. Esta verificación se realiza preguntandole al obrero.

- Cada obra debe poder _informar_ la nómina de obreros trabajando en ella su número de afiliado a UOCRA.

## Enfermedad
Un obrero puede declarse enfermo, en esos casos no debe ser llamado a trabajar.
