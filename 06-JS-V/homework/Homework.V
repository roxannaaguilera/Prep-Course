Homework V : 


Prototype: son un mecanismo mediante el cual los objetos de JavaScript heredan caracteristicas similares entre si.

Todos los objetos tienen una referencia a otro llamados proto.El proto se usa para que todos los objetos que se creen puedan utilizar una determinada función.


Cómo se hace?

Paso 1:

Define function constructor :

function Persona(edad) {
    this.edad = edad,
}

Paso 2: 

Define propiedad de prototype

Persona.prototype.getEdad = function(){
    return this.edad,
}

Paso 3:  

Define objetos

> var obj = new Persona (22);
<. undefined
> var obj2 = new Persona (34);
<. undefined
>var obj3 = new Persona (14);
<. undefined

luego verás que cada uno de los objetos definidos comparten la misma función.

>obj
<. Persona {edad : 22}

>obj2
<. Persona {edad: 34}


>obj3
<. Persona { edad : 14}


para saber si un objeto tiene una función aplica la siguiente sintaxis:

>obj.__proto__

Recuerda que un objeto tiene un conjunto de propiedades, si no llegase a conseguir nada lo obtendrá del prototype.

Ejemplo: 

> var array = [1,2,3]
<. undefined
>array.push()
<.3


Constructors (de Clases)

Para definir que son los constructores de clase, primero debemos definir qué son las clases. En informática, una clase es una plantilla para la creación de objetos de datossegún un modelo predefinido.

Las clases se usan para representar entidades o conceptos como los sustantivos en el lenguaje.

Por ejemplo:

Class = car,

Objects:

audi, nissan, volvo.

La clase es la que define la plantilla. Ej: Alumno. Los objetos o instancias serían José, Pedro y Pablo.

Tomando en cuenta esto, podemos afirmar que los constructores de clases o Functions Constructors van a permitir construir esos objetos.

function Persona() {
    this.firstname = 'Juan';
    this.lastname = 'Pérez';

}

Todas las funciones constructoras de clases deben empezar con mayúscula. Por ejemplo : Persona. Esto las diferencia de otra función.


Cuando la variable es construida usando un constructor de clase JavaScript lo indica.

Function Car (marca, cv, color){
    this.marca = marca,
    this.cv = cv;
    this.color = color;
}


si queremos contruir una nueva instancia podemos utilizar el keyword new. Ejemplo:

var audi = new Car ('audi', 1500, 'verde')


