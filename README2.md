## Etapa 1:

Un solo tipo de obra, tres tipos de obrero.
Obrero trabaja en una sola obra. Trabajar solo afecta a la obra en tres atributos, por ejemplo: seguridad, confort y estética.
La obra conoce quienes trabajan en ella y ejecuta una jornada, esto provoca que todos sus trabajadores trabajen.
Métodos importantes: obrero.trabajar() y obra.dispararJornada().

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
