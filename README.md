# Obreros
Debemos armar un modelo de obrero de la construcción

## Modelo básico
Para los obreros de una obra tenemos que tener en cuenta los siguientes indicadores:

_ el _nombre_, _apellido_, _dni_
- el _jornal_, expresado en pesos

Los obreros responden a los mensajes:

`trabajar()`, `descansar()`, `almorzar()`

Hay distintos tipo de obreros en una obra:

Los _albañiles_ , que se encargan de todos los trabajos comunes de albañileria, generalmente trabajan fijos en un obra hasta que finaliza y cobran por jornal trabajdo y los especialistas entre los que se encuentran _plomeros_, _electricistas_, _gasistas_

## Roles dentro de Albañileria
Dentro de la albañileria existen varios roles:

El _peon_ es el rol inicial, hace todo tipo de trabajos, siempre responde a las ordenes de un _oficial_albañil_, que ya cuenta con mas esperiencia, colabora con los otros tipos de obreros y recibe ordener del _capataz_, que es el encargado de coordinar todo el equipo de albañiles.



Obreros hacen cosas en una obra, que tiene un efecto sobre la obra: los albañiles hacen una cosa, los plomeros otra, etc.. Hay dos tipos de obra. P.ej. si el efecto de los albañiles es levantar pared, para una casa es una cosa y para un edificio es otra distinta.

Este ejercicio puede tener algo de errores, p.ej. si le pido hacer algo a un albañil que está en reposo tira error.

## Almuerzo
una acción que hacen todos los obreros, para que surja la superclase Obrero a posteriori

## Rotación de personal
Si un tipo de obra se va acordando de qué obreros trabajaron, se puede hacer un método trabajo(obrero), para que practiquen el contains.

## UOCRA Presente
Cada el sindicato visita la obra para verificar que todos los obreros esten en blanco y todos esten usando los elementos de seguridad correspondientes.

Para evitar suspensiones la obra realiza una verificacion antes de iniciar la jornada de trabajo, que todos los obreros esten listo con los elementos de seguridad necesarios

Cada obra debe poder _informar_ la nómina de obreros trabajando en ella indicando sus datos personales y su número de afiliado a UOCRA.

# obreros
