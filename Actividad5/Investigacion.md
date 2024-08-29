# Sistemas operativos 

### Tipos de kernel y sus diferencias 

Existen diferentes tipos de kernels, cada uno con sus propias características y enfoques de diseño. Los tres tipos principales son: 

    Kernel monolítico: En este diseño, todas las funciones del kernel se implementan como un único programa en espacio de kernel. Ejemplos de sistemas operativos con kernels monolíticos son Linux y Windows (aunque Windows también incorpora aspectos de diseño híbrido). 

    Microkernel: En contraste con el enfoque monolítico, un microkernel delega la mayoría de las funciones del kernel a procesos separados que se ejecutan en espacio de usuario. Esto reduce la complejidad del núcleo y facilita la extensibilidad y la modularidad del sistema operativo. Ejemplos de sistemas con microkernels son GNU Hurd y QNX. 

    Kernel híbrido: Como su nombre sugiere, un kernel híbrido combina características de los kernels monolíticos y microkernels. Algunas funciones críticas se implementan en espacio de kernel, mientras que otras se ejecutan como procesos en espacio de usuario. Este enfoque busca combinar la eficiencia del kernel monolítico con la flexibilidad del microkernel. macOS es un ejemplo de sistema operativo que utiliza un kernel híbrido. 

Además de gestionar recursos y proporcionar servicios básicos, el kernel también juega un papel crucial en la seguridad del sistema. Implementa mecanismos de control de acceso, gestión de usuarios y protección contra amenazas como malware y ataques de seguridad. 


## User Mode vs Kernel Mode

### User Mode:

Es el modo en el que se ejecutan las aplicaciones de usuario, como los navegadores web, editores de texto, etc.

    Privilegios: Tiene acceso restringido a los recursos del sistema. Las aplicaciones en modo usuario no pueden directamente acceder al hardware o a la memoria crítica del sistema operativo.

    Protección: Asegura que las aplicaciones no interfieran entre sí o con el sistema operativo. Esto previene que una aplicación defectuosa pueda comprometer la estabilidad del sistema.

    Transiciones: Las aplicaciones en modo usuario pueden solicitar servicios del sistema operativo a través de llamadas al sistema, que implican cambiar al modo kernel para realizar tareas críticas.

### Kernel Mode:

Es el modo en el que se ejecuta el núcleo del sistema operativo (kernel) y sus drivers.

    Privilegios: Tiene acceso completo a todo el hardware y la memoria del sistema. Puede realizar operaciones críticas y gestionar recursos del sistema.

    Protección: El kernel está protegido para evitar que el código de usuario pueda hacer cambios peligrosos directamente en el sistema.

    Transiciones: Cambiar de modo usuario a modo kernel se realiza mediante llamadas al sistema, interrupciones, o excepciones.


## Interrupciones vs Traps

### Interrupciones:

Son señales enviadas al procesador por el hardware (como dispositivos de entrada/salida) para indicar que necesitan atención inmediata.

    Permiten al sistema operativo gestionar eventos asíncronos y responder a dispositivos que necesitan atención.
Ejemplo: Una interrupción puede ser generada cuando se recibe un paquete de red, cuando un temporizador expira, o cuando un teclado es presionado.

### Traps (Excepciones):

Son eventos generados por el propio procesador o el software debido a errores o condiciones especiales que requieren manejo inmediato.

    Permiten al sistema operativo gestionar condiciones anómalas o errores en la ejecución del código.
Tipos:

Traps de Software: Causadas por instrucciones especiales o errores en el código (como una división por cero).

Traps de Hardware: Resultan de condiciones inesperadas que afectan la ejecución del hardware (como acceso a memoria no permitida).